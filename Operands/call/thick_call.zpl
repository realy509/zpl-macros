CALLSETDBL 1, THIC(PVHX()) # Get the thickness of the specified surface
IF PVHY()==0
    CALLMACRO minmax.zpl            # Run the minmax.zpl
ELSE
    CALLMACRO percentage.zpl        # Run the percentage.zpl
ENDIF
OPTRETURN 0, CALD(1)