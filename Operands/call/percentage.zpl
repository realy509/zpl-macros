penalty = 0
value = CALD(1) #Value from parent set by CALLSETDBL indx, nmbr
target = PVPX()
percentage = PVPY()
# Calculate the absolute tolerance amount. This is always positive.
# For example, 10% of -100 is an absolute tolerance of 10.
abs_tolerance = ABSO(target * percentage)
# Define the boundaries by simply adding/subtracting the absolute tolerance.
# This works correctly for both positive and negative targets.
# If target = -100, min_value = -110 and max_value = -90.
min_value = target - abs_tolerance
max_value = target + abs_tolerance
range_size = max_value - min_value
IF value < min_value
    diff = (min_value - value) / range_size
    penalty = diff * diff
ELSE
    IF value > max_value
        diff = (value - max_value) / range_size
        penalty = diff * diff
    ENDIF
ENDIF
CALLSETDBL 1, penalty