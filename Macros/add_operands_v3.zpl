# --- Simple Merit Function Row Inserter and Populator ---
# This macro provides a simple template for adding a specific
# number of rows to the top of the Merit Function and then populating them.

# ***** USER-EDITABLE SECTION *****

# 1. Set the total number of new rows you want to add.
#    For this example, we'll add 4 rows to demonstrate.
rows_to_add = 4

# ***** END OF USER-EDITABLE SECTION *****


# --- Main Macro Logic ---

PRINT "Adding ", rows_to_add, " new rows to the top of the Merit Function..."

# --- Stop UI updates ---
SUSPENDUPDATES

# --- Insert the required number of blank rows at the top ---
# This loop runs 'rows_to_add' times, pushing existing operands down.
FOR i, 1, rows_to_add, 1
    INSERTMFO 1
NEXT

# ***** POPULATE YOUR NEW ROWS HERE *****
# Below are examples. You can copy, paste, and modify these lines
# to populate all the rows you added above.
# The format is: SETOPERAND [row number], [column code], [value]

# --- Example 1: Set Row 1 to be a BLNK operand with a comment ---
# Column 1 is for the Operand Type. We get its code with ONUM().
#SETOPERAND 1, 1, ONUM("BLNK")
# Column 10 is for the Comment. The value is the string you want.
#SETOPERAND 1, 10, "--- My Header Comment ---"


# --- Example 2: Set Row 2 to be an EFFL operand with a Target and Weight ---
# Set the operand type to EFFL.
#SETOPERAND 2, 1, ONUM("EFFL")
# Set the Target (column 8) to 100.
#SETOPERAND 2, 8, 100
# Set the Weight (column 9) to 1.
#SETOPERAND 2, 9, 1

# --- Merit Function Template Builder ---
# This macro adds a predefined list of operands and comments
# to the top of the Merit Function.

# ***** CONFIGURATION *****

# Total number of rows to add, based on your list.
rows_to_add = 141

# ***** END OF CONFIGURATION *****


# --- Main Macro Logic ---
PRINT "Adding ", rows_to_add, " new rows to the top of the Merit Function..."

SUSPENDUPDATES

# Insert all the blank rows at the top first.
FOR i, 1, rows_to_add, 1
    INSERTMFO 1
NEXT

# --- Populate the newly inserted rows ---
# The counter 'i' will keep track of which row we are on.
i = 0

# --- General ---
i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- GOTO: Skips all operands between the GOTO and the Op# ---"

i = i + 1
SETOPERAND i, 1, ONUM("GOTO")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Volume of an element or group of elements in cubic cm"

i = i + 1
SETOPERAND i, 1, ONUM("VOLU")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Index of refraction at a specific surface and wavelength"

i = i + 1
SETOPERAND i, 1, ONUM("INDX")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Edge Thickness Greater Than a target value"

i = i + 1
SETOPERAND i, 1, ONUM("ETGT")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Edge Thickness Less Than a target value"

i = i + 1
SETOPERAND i, 1, ONUM("ETLT")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Diameter Less Than a target value"

i = i + 1
SETOPERAND i, 1, ONUM("DMLT")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Diameter Greater Than a target value"

i = i + 1
SETOPERAND i, 1, ONUM("DMGT")

# --- System Parameters ---
i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- System Parameters ---"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- EFFL: Effective focal length in lens units. This is paraxial ---"

i = i + 1
SETOPERAND i, 1, ONUM("EFFL")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- WFNO: Working F/#. ---"

i = i + 1
SETOPERAND i, 1, ONUM("WFNO")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- TOTR: Total track (length) of lens in lens units ---"

i = i + 1
SETOPERAND i, 1, ONUM("TOTR")

# --- Surface Constraints ---
i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Surface Constraints ---"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Max Center Thickness of Glass ---"

i = i + 1
SETOPERAND i, 1, ONUM("MXCG")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Min Center Thickness of Glass ---"

i = i + 1
SETOPERAND i, 1, ONUM("MNCG")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Max Edge Air ---"

i = i + 1
SETOPERAND i, 1, ONUM("MXEA")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Min Edge Air ---"

i = i + 1
SETOPERAND i, 1, ONUM("MNEA")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Max Edge Glass ---"

i = i + 1
SETOPERAND i, 1, ONUM("MXEG")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Min Edge Glass ---"

i = i + 1
SETOPERAND i, 1, ONUM("MNEG")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Minimum diameter to thickness ratio ---"

i = i + 1
SETOPERAND i, 1, ONUM("MNDT")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Maximum curvature ---"

i = i + 1
SETOPERAND i, 1, ONUM("MXCV")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Maximum angle of incidence ---"

i = i + 1
SETOPERAND i, 1, ONUM("MXAI")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Surface Curvature ---"

i = i + 1
SETOPERAND i, 1, ONUM("CVVA")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Surface Thickness ---"

i = i + 1
SETOPERAND i, 1, ONUM("STHI")

# --- Seidel Aberrations ---
i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Seidel Aberrations ---"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Astigmatism in waves ---"

i = i + 1
SETOPERAND i, 1, ONUM("ASTI")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- 3rd-order longitudinal spherical aberration ---"

i = i + 1
SETOPERAND i, 1, ONUM("SPHA")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- 3rd-order tangential coma coefficient ---"

i = i + 1
SETOPERAND i, 1, ONUM("COMA")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- The Petzval field curvature coefficient ---"

i = i + 1
SETOPERAND i, 1, ONUM("FCUR")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- 3rd-order fractional distortion coefficient ---"

i = i + 1
SETOPERAND i, 1, ONUM("DIST")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Paraxial longitudinal chromatic aberration ---"

i = i + 1
SETOPERAND i, 1, ONUM("CHRO")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Paraxial lateral chromatic aberration ---"

i = i + 1
SETOPERAND i, 1, ONUM("LCHR")

# --- Wavefront Aberrations ---
i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Wavefront Aberrations ---"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Measures wavefront error in waves for specific aberrations"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Term 3: Defocus (Field Curvature)"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Term 4: Astigmatism (0/90 deg)"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Term 5: Astigmatism (45 deg)"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Term 6: Y-Coma (Vertical Coma)"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Term 7: X-Coma (Sagittal Coma)"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Term 8: Primary Spherical Aberration"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Term 9: Y-Trefoil"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Term 15: Secondary Spherical Aberration"

i = i + 1
SETOPERAND i, 1, ONUM("ZERN")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Chromatic Aberration Control ---"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Axial Color: Longitudinal focus shift between wavelengths"

i = i + 1
SETOPERAND i, 1, ONUM("AXCL")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Lateral Color: Off-axis chief ray height difference"

i = i + 1
SETOPERAND i, 1, ONUM("LACL")

# --- System Performance ---
i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- System Performance ---"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- MTFA: The average of the sagittal and tangential MTF ---"

i = i + 1
SETOPERAND i, 1, ONUM("MTFA")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- RMS spot radius with respect to the centroid ---"

i = i + 1
SETOPERAND i, 1, ONUM("RSCE")

# --- Basic Arithmetic ---
i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Basic Arithmetic ---"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Adds value of Op#1 and Op#2"

i = i + 1
SETOPERAND i, 1, ONUM("SUMM")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Subtracts value of Op#2 from Op#1"

i = i + 1
SETOPERAND i, 1, ONUM("DIFF")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Multiplies value of Op#1 and Op#2"

i = i + 1
SETOPERAND i, 1, ONUM("PROD")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Divides value of Op#1 by Op#2"

i = i + 1
SETOPERAND i, 1, ONUM("DIVI")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Returns reciprocal (1/value) of Op#1"

i = i + 1
SETOPERAND i, 1, ONUM("RECI")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Multiplies Op# by a constant Factor"

i = i + 1
SETOPERAND i, 1, ONUM("PROB")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Divides Op# by a constant Factor"

i = i + 1
SETOPERAND i, 1, ONUM("DIVB")

# --- Range & Statistical Math ---
i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Range & Statistical Math ---"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Sums all operands in a range (Op#1 to Op#2)"

i = i + 1
SETOPERAND i, 1, ONUM("OSUM")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Quadratic sum (sqrt of sum of squares) of a range"

i = i + 1
SETOPERAND i, 1, ONUM("QSUM")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Returns the largest value in a range"

i = i + 1
SETOPERAND i, 1, ONUM("MAXX")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Returns the smallest value in a range"

i = i + 1
SETOPERAND i, 1, ONUM("MINN")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Constrains all operands in a range to be equal"

i = i + 1
SETOPERAND i, 1, ONUM("EQUA")

# --- Single Value Math Functions ---
i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Single Value Math Functions ---"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Returns absolute value of Op#"

i = i + 1
SETOPERAND i, 1, ONUM("ABSO")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Returns square root of Op#"

i = i + 1
SETOPERAND i, 1, ONUM("SQRT")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Returns natural log (ln) of Op#"

i = i + 1
SETOPERAND i, 1, ONUM("LOGE")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Returns base-10 log of Op#"

i = i + 1
SETOPERAND i, 1, ONUM("LOGT")

# --- Trigonometric Functions (Rad/Deg) ---
i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Trigonometric Functions (Rad/Deg) ---"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Sine of Op#"

i = i + 1
SETOPERAND i, 1, ONUM("SINE")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Cosine of Op#"

i = i + 1
SETOPERAND i, 1, ONUM("COSI")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Tangent of Op#"

i = i + 1
SETOPERAND i, 1, ONUM("TANG")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Arcsine of Op#"

i = i + 1
SETOPERAND i, 1, ONUM("ASIN")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Arccosine of Op#"

i = i + 1
SETOPERAND i, 1, ONUM("ACOS")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Arctangent of Op#"

i = i + 1
SETOPERAND i, 1, ONUM("ATAN")

# --- Boundary Constraints (Math-based) ---
i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Boundary Constraints (Math-based) ---"

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Constrains Op# > Target"

i = i + 1
SETOPERAND i, 1, ONUM("OPGT")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Constrains Op# < Target"

i = i + 1
SETOPERAND i, 1, ONUM("OPLT")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Constrains Op# = Target"

i = i + 1
SETOPERAND i, 1, ONUM("OPVA")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Constrains ABS(Op#) > Target"

i = i + 1
SETOPERAND i, 1, ONUM("ABGT")

i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "Constrains ABS(Op#) < Target"

i = i + 1
SETOPERAND i, 1, ONUM("ABLT")

# --- Default merit function start ---
i = i + 1
SETOPERAND i, 1, ONUM("BLNK")
SETOPERAND i, 10, "--- Default merit function start ---"

i = i + 1
SETOPERAND i, 1, ONUM("DMFS")

# --- Finalization ---
RESUMEUPDATES
UPDATE EDITORS

PRINT "Process complete. ", rows_to_add, " rows were added and populated."


# ***** END OF POPULATION SECTION *****


# --- Finalization ---
RESUMEUPDATES
UPDATE EDITORS

PRINT "Process complete. ", rows_to_add, " rows were added and populated."