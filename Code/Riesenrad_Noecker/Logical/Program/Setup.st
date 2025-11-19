
ACTION Setup: 

	rSetup(CLK:=gASISetup);
	eAutoControl:=idle;
	IF rSetup.Q THEN
		gDriveDirection:=NOT gDriveDirection;
		
	ELSIF gASIStart THEN
		bSetup:=FALSE;
		bAutoMode:=TRUE;
	END_IF
	
	IF tonStart.Q THEN
		gASILight1:=NOT gASILight1;
	END_IF
	
	IF bSetAllGondels THEN
		aPersonInCarSet[0]:=nGondelValueSet;
		aPersonInCarSet[1]:=nGondelValueSet;
		aPersonInCarSet[2]:=nGondelValueSet;
		aPersonInCarSet[3]:=nGondelValueSet;
		aPersonInCarSet[4]:=nGondelValueSet;
		aPersonInCarSet[5]:=nGondelValueSet;
		bSetAllGondels:=FALSE;
	END_IF
	tonStart(IN:=(NOT tonStart.Q), PT:=T#1s);
END_ACTION
