penalty = 0
value = OPEV(316, 0, 0, 0, 0, 0, 0) #WFNO code 316
min_value = PVPX()
max_value = PVPY()
IF value < min_value
    diff = (min_value - value)
    penalty = diff * diff
ELSE
    IF value > max_value
        diff = (value - max_value)
        penalty = diff * diff
    ENDIF
ENDIF
OPTRETURN 0, penalty
#speed wise POWR<EXPE<*
# exp(n*ln(x)) = x^n = x*x