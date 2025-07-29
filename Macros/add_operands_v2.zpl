# --- The Customizable Merit Function Builder ---

# ***** EDIT THIS LINE to define the operands and comments you want to add *****
# - Separate every item with a comma.
# - If the item is a valid operand (EFFL, RAID, etc.), it will be added.
# - If the item is NOT a valid operand, it becomes a comment for a BLNK row.

list$ =         "--- GOTO: Skips all operands between the GOTO and the Op# ---,"
list$ = list$ + "GOTO,"

    list$ = list$ + "Volume of an element or group of elements in cubic cm,"
    list$ = list$ + "VOLU,"

    list$ = list$ + "Index of refraction at a specific surface and wavelength,"
    list$ = list$ + "INDX,"

    list$ = list$ + "Edge Thickness Greater Than a target value,"
    list$ = list$ + "ETGT,"

    list$ = list$ + "Edge Thickness Less Than a target value,"
    list$ = list$ + "ETLT,"

    list$ = list$ + "Diameter Less Than a target value,"
    list$ = list$ + "DMLT,"

    list$ = list$ + "Diameter Greater Than a target value,"
    list$ = list$ + "DMGT,"

list$ = list$ + "--- System Parameters ---,"

    list$ = list$ + "--- EFFL: Effective focal length in lens units. This is paraxial ---,"
    list$ = list$ + "EFFL,"

    list$ = list$ + "--- WFNO: Working F/#. ---,"
    list$ = list$ + "WFNO,"

    list$ = list$ + "--- TOTR: Total track (length) of lens in lens units ---,"
    list$ = list$ + "TOTR,"

list$ = list$ + "--- Surface Constraints ---,"

    list$ = list$ + "--- Max Center Thickness of Glass ---,"
    list$ = list$ + "MXCG,"

    list$ = list$ + "--- Min Center Thickness of Glass ---,"
    list$ = list$ + "MNCG,"

    list$ = list$ + "--- Max Edge Air ---,"
    list$ = list$ + "MXEA,"

    list$ = list$ + "--- Min Edge Air ---,"
    list$ = list$ + "MNEA,"

    list$ = list$ + "--- Max Edge Glass ---,"
    list$ = list$ + "MXEG,"

    list$ = list$ + "--- Min Edge Glass ---,"
    list$ = list$ + "MNEG,"

    list$ = list$ + "--- Minimum diameter to thickness ratio. Mode = 0 (default) to use Mech Semi-Dia and Mode = 1 to use Clear Semi-Dia ---,"
    list$ = list$ + "MNDT,"    

    list$ = list$ + "--- Maximum curvature ---,"
    list$ = list$ + "MXCV,"    

    list$ = list$ + "--- Maximum angle of incidence ---,"
    list$ = list$ + "MXAI,"  
    
    list$ = list$ + "--- Surface Curvature ---,"
    list$ = list$ + "CVVA,"  

    list$ = list$ + "--- Surface Thickness ---,"
    list$ = list$ + "STHI,"  

list$ = list$ + "--- Seidell Aberrations ---,"

    list$ = list$ + "--- Astigmatism in waves contributed by the surface. the separation between the tangential and sagittal fields. If Surf is zero, the sum for the entire system is used. For Non-Paraxial System Not Accurate ---,"
    list$ = list$ + "ASTI,"

    #list$ = list$ + "---  ---,"
    #list$ = list$ + "PETZ,"

    list$ = list$ + "--- The third-order longitudinal spherical aberration coefficientm To quickly minimize on-axis blur in systems with a large aperture ---,"
    list$ = list$ + "SPHA,"

    list$ = list$ + "--- The third-order tangential coma coefficient To quickly minimize the classic off-axis comet shaped blur---,"
    list$ = list$ + "COMA,"

    list$ = list$ + "--- The Petzval field curvature coefficient. To measure the fundamental, inherent curvature of the image plane based on the lens powers and materials. Targeting this helps flatten the image field.---,"
    list$ = list$ + "FCUR,"

    list$ = list$ + "--- The third-order fractional distortion coefficient.To quickly minimize pincushion or barrel distortion. For final control, the real-ray DIST operand is more accurate ---,"
    list$ = list$ + "DIST,"

    list$ = list$ + "--- The first-order (paraxial) longitudinal chromatic aberration. Bringing the focus of different wavelengths together on-axis. Seidel equivalent of AXCL ---,"
    list$ = list$ + "CHRO,"

    list$ = list$ + "--- The third-order (paraxial) lateral chromatic aberration Minimize color fringing for off-axis field points. Seidel equivalent of LACL.---,"
    list$ = list$ + "LCHR,"

list$ = list$ + "--- Wavefront Aberrations ---,"

    list$ = list$ + "Measures wavefront error in waves for specific aberrations Set the 'Term' number in the Data1 column for each entry,"
    list$ = list$ + "Term 3: Defocus (Field Curvature),"
    list$ = list$ + "Term 4: Astigmatism (0/90 deg),"
    list$ = list$ + "Term 5: Astigmatism (45 deg),"
    list$ = list$ + "Term 6: Y-Coma (Vertical Coma),"
    list$ = list$ + "Term 7: X-Coma (Sagittal Coma),"
    list$ = list$ + "Term 8: Primary Spherical Aberration,"
    list$ = list$ + "Term 9: Y-Trefoil,"
    list$ = list$ + "Term 15: Secondary Spherical Aberration,"
    list$ = list$ + "ZERN,"

    list$ = list$ + "--- Chromatic Aberration Control ---,"
    list$ = list$ + "Axial Color: Longitudinal focus shift between wavelengths,"
    list$ = list$ + "AXCL,"

    list$ = list$ + "Lateral Color: Off-axis chief ray height difference between wavelengths,"
    list$ = list$ + "LACL,"

list$ = list$ + "--- System Performance ---,"

    list$ = list$ + "--- MTFA: The average of the sagittal and tangential MTF at a specific spatial frequency ---,"
    list$ = list$ + "MTFA,"

    list$ = list$ + "--- RMS spot radius with respect to the centroid in lens unit. Gaussian quadrature method that is accurate for systems with unvignetted circular pupils. Ring: number of rings of rays traced ---,"
    list$ = list$ + "RSCE,"

list$ = list$ + "--- Basic Arithmetic ---,"

    list$ = list$ + "Adds value of Op#1 and Op#2,"
    list$ = list$ + "SUMM,"

    list$ = list$ + "Subtracts value of Op#2 from Op#1,"
    list$ = list$ + "DIFF,"

    list$ = list$ + "Multiplies value of Op#1 and Op#2,"
    list$ = list$ + "PROD,"

    list$ = list$ + "Divides value of Op#1 by Op#2,"
    list$ = list$ + "DIVI,"

    list$ = list$ + "Returns reciprocal (1/value) of Op#1,"
    list$ = list$ + "RECI,"

    list$ = list$ + "Multiplies Op# by a constant Factor,"
    list$ = list$ + "PROB,"

    list$ = list$ + "Divides Op# by a constant Factor,"
    list$ = list$ + "DIVB,"

list$ = list$ + "--- Range & Statistical Math ---,"

    list$ = list$ + "Sums all operands in a range (Op#1 to Op#2),"
    list$ = list$ + "OSUM,"

    list$ = list$ + "Quadratic sum (sqrt of sum of squares) of a range,"
    list$ = list$ + "QSUM,"

    list$ = list$ + "Returns the largest value in a range,"
    list$ = list$ + "MAXX,"

    list$ = list$ + "Returns the smallest value in a range,"
    list$ = list$ + "MINN,"

    list$ = list$ + "Constrains all operands in a range to be equal,"
    list$ = list$ + "EQUA,"

list$ = list$ + "--- Single Value Math Functions ---,"

    list$ = list$ + "Returns absolute value of Op#,"
    list$ = list$ + "ABSO,"

    list$ = list$ + "Returns square root of Op#,"
    list$ = list$ + "SQRT,"

    list$ = list$ + "Returns natural log (ln) of Op#,"
    list$ = list$ + "LOGE,"

    list$ = list$ + "Returns base-10 log of Op#,"
    list$ = list$ + "LOGT,"

list$ = list$ + "--- Trigonometric Functions (Rad/Deg) ---,"

    list$ = list$ + "Sine of Op#,"
    list$ = list$ + "SINE,"

    list$ = list$ + "Cosine of Op#,"
    list$ = list$ + "COSI,"

    list$ = list$ + "Tangent of Op#,"
    list$ = list$ + "TANG,"

    list$ = list$ + "Arcsine of Op#,"
    list$ = list$ + "ASIN,"

    list$ = list$ + "Arccosine of Op#,"
    list$ = list$ + "ACOS,"

    list$ = list$ + "Arctangent of Op#,"
    list$ = list$ + "ATAN,"

list$ = list$ + "--- Boundary Constraints (Math-based) ---,"

    list$ = list$ + "Constrains Op# > Target,"
    list$ = list$ + "OPGT,"

    list$ = list$ + "Constrains Op# < Target,"
    list$ = list$ + "OPLT,"

    list$ = list$ + "Constrains Op# = Target,"
    list$ = list$ + "OPVA,"

    list$ = list$ + "Constrains ABS(Op#) > Target,"
    list$ = list$ + "ABGT,"

    list$ = list$ + "Constrains ABS(Op#) < Target,"
    list$ = list$ + "ABLT,"


list$ = list$ + "--- Default merit function start ---,"
list$ = list$ + "DMFS"  # <-- NO COMMA on the last line

# --- Main Macro Logic (No need to edit below this line) ---

PRINT "Adding custom operands and comments to the top of the Merit Function..."

# Count how many items are in the user's list.
num_items = 0
i = 1
LABEL count_loop
temp_item$ = $GETSTRINGC(list$, i)
IF (SLEN(temp_item$) > 0)
    num_items = num_items + 1
    i = i + 1
    GOTO count_loop
ENDIF

IF (num_items == 0)
    PRINT "The item list is empty. No changes were made."
    END
ENDIF

# --- Stop UI updates for better speed ---
SUSPENDUPDATES

# --- Insert the required number of blank rows at the top ---
FOR i, 1, num_items, 1
    INSERTMFO 1
NEXT

# --- Populate the new rows based on whether each item is an operand or a comment ---
FOR i, 1, num_items, 1
    # Get the current item from the master list.
    item$ = $GETSTRINGC(list$, i)
    
    # Check if the item is a valid operand by getting its numeric code.
    op_code = ONUM(item$)
    
    IF (op_code > 0)
        # --- This item IS a valid operand ---
        # Set the operand type directly.
        SETOPERAND i, 1, op_code
        
    ELSE
        # --- This item IS NOT a valid operand, so treat it as a comment ---
        # First, set the operand type to BLNK to hold the comment.
        SETOPERAND i, 1, ONUM("BLNK")
        
        # Then, place the item string into the comment column.
        SETOPERAND i, 10, item$
    ENDIF
NEXT

# --- Finalization ---
RESUMEUPDATES
UPDATE EDITORS

PRINT num_items, " rows have been added to the Merit Function."