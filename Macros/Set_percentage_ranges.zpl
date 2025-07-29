# Merit Function Tolerance Builder (Insert at Top Version)
# This macro adds boundary constraints to the TOP of the Merit Function,
# preserving any existing operands.

# --- Get User Input ---
INPUT "Enter tolerance percentage as a decimal (e.g., 0.01 for 1%):", percentage

# --- Input Validation ---
IF (percentage <= 0)
    PRINT "Error: Percentage must be a positive number."
    END
ENDIF

PRINT "Inserting +/-", percentage * 100, "% tolerance operands at the top of the Merit Function..."

# --- CRITICAL: Suspend UI updates for massive speed increase ---
SUSPENDUPDATES

# --- Preparation ---
# Get the total number of surfaces in the system.
num_surfaces = NSUR()

# Calculate the total number of new rows required (5 per surface).
rows_to_add = num_surfaces * 5

# --- Insert all required blank rows at the top ---
# This is more efficient than inserting them one by one inside the main loop.
FOR i, 1, rows_to_add, 1
    # Inserting at row 1 repeatedly pushes everything down.
    INSERTMFO 1
NEXT

# --- Main Loop: Populate the new rows for each surface ---
FOR s, 1, num_surfaces, 1
    # Calculate the starting row number for this surface's operand block.
    op_row = (s - 1) * 5 + 1

    # --- Populate Blank Line for Organization ---
    SETOPERAND op_row, 1, ONUM("BLNK")
    comment$ = "Tolerances for Surface " + $STR(s)
    SETOPERAND op_row, 10, comment$

    # --- Curvature Tolerances (CVLT / CVGT) ---
    current_curv = CURV(s)
    delta_curv = ABSO(current_curv * percentage)
    lower_curv = current_curv - delta_curv
    upper_curv = current_curv + delta_curv

    # Populate CVLT (Curvature Less Than)
    SETOPERAND op_row + 1, 1, ONUM("CVLT")
    SETOPERAND op_row + 1, 2, s
    SETOPERAND op_row + 1, 8, upper_curv
    SETOPERAND op_row + 1, 9, 1

    # Populate CVGT (Curvature Greater Than)
    SETOPERAND op_row + 2, 1, ONUM("CVGT")
    SETOPERAND op_row + 2, 2, s
    SETOPERAND op_row + 2, 8, lower_curv
    SETOPERAND op_row + 2, 9, 1

    # --- Thickness Tolerances (CTLT / CTGT) ---
    current_thic = THIC(s)
    delta_thic = ABSO(current_thic * percentage)
    lower_thic = current_thic - delta_thic
    upper_thic = current_thic + delta_thic

    # Populate CTLT (Center Thickness Less Than)
    SETOPERAND op_row + 3, 1, ONUM("CTLT")
    SETOPERAND op_row + 3, 2, s
    SETOPERAND op_row + 3, 8, upper_thic
    SETOPERAND op_row + 3, 9, 1

    # Populate CTGT (Center Thickness Greater Than)
    SETOPERAND op_row + 4, 1, ONUM("CTGT")
    SETOPERAND op_row + 4, 2, s
    SETOPERAND op_row + 4, 8, lower_thic
    SETOPERAND op_row + 4, 9, 1
NEXT

# --- Finalization ---
# RESUME UI updates and force a single redraw of the editors.
RESUMEUPDATES
UPDATE EDITORS

PRINT "Merit Function has been successfully updated."