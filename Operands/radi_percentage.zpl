#RADI minmax
penalty = 0
value = RADI(PVHX()) # Get the radius of curvature of the specified surface
target = PVPX()
percentage = PVPY()
min_value = (1 - percentage) * target
max_value = (1 + percentage) * target
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
OPTRETURN 0, penalty # Return penalty to Merit Function (0 if within bounds, positive if outside)