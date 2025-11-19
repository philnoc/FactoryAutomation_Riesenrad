
ACTION Safety: 
	gEmergencyStop:= (NOT gEmergencyStop1 AND NOT gEmergencyStop2 AND NOT gEmergencyStop3 AND NOT gEmergencyStop4);
	
	gLightGrid:=  (NOT gLightGrid1 AND NOT gLightGrid2 AND NOT gLightGrid3 AND NOT gLightGrid4);
	
	gSafetyStop:=gEmergencyStop OR gLightGrid;
	
	
	//Togglen der Lampe einfügen für bessere Sichtbarkeit
	IF gSafetyStop THEN
		bSafetyResetReq := TRUE;
		eSpeed:=stop;
	END_IF
	
	IF rfAutomode.Q AND NOT bSkipAutoChange THEN
		bSafetyResetReq:=TRUE;
		bAutomodeChange:=TRUE;
		gASILight1:=FALSE;
		eSpeed:=stop;
	ELSIF rChangeMode.Q AND bSkipAutoChange THEN
		bSkipAutoChange:=FALSE;
		eSpeed:=stop;
	END_IF
	
	IF bSafetyResetReq AND tonQuit.Q THEN
		gASILight3:=NOT gASILight3;
		gASILight1:=FALSE;
	END_IF
	
	IF rAsiQuit.Q AND NOT bAutomodeChange THEN
		bSafetyResetReq:=FALSE;
		bSetup:=TRUE;
		gASILight3:=FALSE;
		
		IF bAutoMode THEN
			bAutoMode:=FALSE;
			bSkipAutoChange:=TRUE;
		ELSE
			bSkipAutoChange:=FALSE;
		END_IF
	ELSIF rAsiQuit.Q AND bAutomodeChange THEN
		bSafetyResetReq:=FALSE;
		bSetup:=TRUE;
		gASILight3:=FALSE;
		bAutomodeChange:=FALSE;
	END_IF
	
	IF gSafetyStop OR bSafetyResetReq THEN
		gRedTop:=TRUE;
		gRedDown:=TRUE;
		gGreenDown:=FALSE;
		gGreenTop:=FALSE;
	ELSE
		gRedTop:=FALSE;
		gRedDown:=FALSE;
		gGreenDown:=TRUE;
		gGreenTop:=TRUE;
	END_IF
	tonQuit(IN:=(NOT tonQuit.Q), PT:=T#1s);
	rfAutomode(CLK:=bAutoMode);
	rAsiQuit(CLK:=gASIQuit);
END_ACTION
