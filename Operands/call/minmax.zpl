penalty = 0
value = CALD(1) #CALD(1): Value
min_value = PVPX()
max_value = PVPY()
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