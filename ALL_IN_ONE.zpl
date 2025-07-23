row_or_surface = PVHX()
mode = PVHY()
mode2 = PVPX()
parabole = PVPY()
IF (parabole == 0) THEN parabole = 2
min_or_target = PVEX()
max_or_percent = PVEY()
isthic = 0
penalty = 0
mode_select$ = "mode" + $STR(mode)
GOTO mode_select$
    LABEL mode0.0000
        value = OPER(row_or_surface, 10)
        GOTO calculate
    LABEL mode1.0000
        value = RADI(row_or_surface)
        GOTO calculate        
    LABEL mode2.0000
        value = CURV(row_or_surface)    
        GOTO calculate
    LABEL mode3.0000
        value = THIC(row_or_surface)
        isthic = 1
        GOTO calculate
    LABEL mode4.0000
        value = EDGE(row_or_surface)
        GOTO calculate
    LABEL mode5.0000
        value = OPEV(37, 0, 2, 0, 0, 0, 0) # EFL code 37 OCOD("EFFL")
        GOTO calculate
    LABEL mode6.0000
        value = OPEV(316, 0, 0, 0, 0, 0, 0) #WFNO code 316 
        GOTO calculate
LABEL calculate
IF (mode2)
    min_value = (1 - max_or_percent) * min_or_target
    max_value = (1 + max_or_percent) * min_or_target
ELSE
    min_value = min_or_target
    max_value = max_or_percent
ENDIF
IF (isthic) & (min_value < 0) THEN min_value = 0
IF value < min_value THEN penalty = POWR(min_value - value, parabole)
IF penalty == 0
    IF value > max_value THEN penalty = POWR(value - max_value, parabole)
ENDIF
OPTRETURN 0, penalty
END