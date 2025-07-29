# --- Customizable Merit Function Operand Builder ---

# ***** EDIT THIS LINE TO ADD YOUR OWN OPERANDS *****
# Separate each operand name with a comma. DO NOT use spaces.
# The macro will add them in the order you list them.

operands_to_add$ = "EFFL,OPLT,OPGT,MXEG,MNEG,MNEA,TMAS"

# ----------------------------------------------------------
# --- Main Macro Logic (No need to edit below this line) ---
# ----------------------------------------------------------

PRINT "Adding custom operands to the top of the Merit Function..."

# Count how many operands are in the user's list.
num_operands = 0
i = 1
LABEL count_loop
temp_op$ = $GETSTRINGC(operands_to_add$, i)
IF (SLEN(temp_op$) > 0)
    num_operands = num_operands + 1
    i = i + 1
    GOTO count_loop
ENDIF

IF (num_operands == 0)
    PRINT "The operand list is empty. No changes were made."
    END
ENDIF

SUSPENDUPDATES # Suspend UI updates for better speed

# --- Insert the required number of blank rows at the top ---
FOR i, 1, num_operands, 1
    INSERTMFO 1
NEXT

# --- Populate the new rows with the specified operand types ---
FOR i, 1, num_operands, 1
    op_name$ = $GETSTRINGC(operands_to_add$, i)
    
    # Get the numeric code for the operand name.
    op_code = ONUM(op_name$)
    
    # Check if the operand name was valid.
    IF (op_code > 0)
        # If valid, set the operand type.
        SETOPERAND i, 1, op_code
    ELSE
        # If invalid, add a BLNK with an error message in the comment.
        SETOPERAND i, 1, ONUM("BLNK")
        SETOPERAND i, 10, "ERROR: Invalid operand name '" + op_name$ + "'"
    ENDIF
NEXT

# --- Finalization ---
RESUMEUPDATES
UPDATE EDITORS

PRINT num_operands, " operands have been added to the Merit Function."