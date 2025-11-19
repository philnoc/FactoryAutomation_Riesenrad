
PROGRAM _CYCLIC
	Safety;
	
	rChangeMode.CLK:=gButtonOnOff OR bManualStart;
	IF rChangeMode.Q AND NOT bSafetyResetReq THEN
		bAutoMode := NOT bAutoMode;
	END_IF
	
	IF bGondelsNotEmpty THEN
		bAutoMode:=FALSE;
	END_IF
	
	
	IF bSetup AND NOT bSafetyResetReq AND bAutoMode THEN
		Setup;
	ELSIF bAutoMode AND NOT bSetup AND NOT bSafetyResetReq THEN
		Automatic;
	END_IF	
	
	IF NOT bAutoMode AND NOT bSafetyResetReq THEN
		Manual;
	END_IF
	
	Drive;
	Display;
	Lights;
	Visu;
	rChangeMode();
	bNotSetup:= NOT bSetup;
	bManualMode:=NOT bAutoMode;
	
	
END_PROGRAM
