CALLSETDBL 1, OPER(PVHX(), 10)  # Get the HX rows value
IF PVHY()==0
    CALLMACRO minmax.zpl            # Run the minmax.zpl
ELSE
    CALLMACRO percentage.zpl        # Run the percentage.zpl
ENDIF
OPTRETURN 0, CALD(1)