#Thickness min max
value = THIC(PVHX()) # Get the thickness of the specified surface

a = PVPX()
b = PVPY()
# Get min and max values from ZPLM operand arguments
IF (PVHY() == 0)
    min_val = a
    max_val = b
ELSE
    min_val = (1 - b) * a
    max_val = (1 + b) * a
ENDIF

# Check if min_val is below zero and set to zero if true
IF min_val < 0 THEN min_val = 0

k = PVEX()
IF (k == 0) THEN k = 1
n = PVEY()
IF (n == 0) THEN n = 2

# Check if value is outside bounds and compute penalty using POWR
IF value < min_val THEN penalty = k * POWR(min_val - value, n) 
IF value > max_val THEN penalty = k * POWR(value - max_val, n)

OPTRETURN 0, penalty # Return penalty to Merit Function (0 if within bounds, positive if outside)
END