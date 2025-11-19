
ACTION Manual: 
	gASILight1:=FALSE;
	
	IF bVisuPushBetrieb THEN
		eSpeed:=stop;
	END_IF
		IF gButtonStop OR bManualStop THEN
			eSpeed:=stop;
		ELSIF (gButtonSlow AND gButtonFast) OR bManualNormal THEN
			eSpeed:=normal;
		ELSIF gButtonFast OR bManualFast THEN
			eSpeed:=fast;
		ELSIF gButtonSlow OR bManualSlow THEN
			eSpeed:=slow;
		END_IF

	IF sManualColor = '0' THEN
		nColor:=0;
	ELSIF sManualColor = '1' THEN
		nColor:=1;
	ELSIF sManualColor='2' THEN
		nColor:=2;
	ELSIF sManualColor='3' THEN
		nColor:=3;
	ELSIF sManualColor='4' THEN
		nColor:=4;
	ELSIF sManualColor='5' THEN
		nColor:=5;
	END_IF
	rTrigModulo.CLK:=bStartModulo;
	IF rTrigModulo.Q THEN
		eSpeed:=slow;
		bModuloBusy:=TRUE;
	END_IF
	IF bModuloBusy AND gRFIDColor = aRFIDColors[nColor] THEN 
		eSpeed:=stop;
		bModuloBusy:=FALSE;
		
	END_IF
	
	tonManualSwitch.IN:=gButtonStop;
	tonManualSwitch.PT:=T#5s;
	IF tonManualSwitch.Q THEN
		gDriveDirection:=NOT gDriveDirection;
		tonManualSwitch.IN:=FALSE;
	END_IF
	
	IF bResetPersonInGondel THEN
		aPersonInCarIs[nRFIDArrIndex]:=0;
	END_IF
	IF eSpeed <> stop THEN
		gLightGreen:=FALSE;
		gLightRed:=TRUE;
	ELSIF rTrigGreen.Q THEN
		gLightGreen:=NOT gLightGreen;
	ELSIF rTrigRed.Q THEN
		gLightRed:= NOT gLightRed;
	END_IF
	
	IF aPersonInCarIs[0]<> 0 OR aPersonInCarIs[1]<> 0 OR aPersonInCarIs[2]<> 0 OR aPersonInCarIs[3]<> 0 OR aPersonInCarIs[4]<> 0 OR aPersonInCarIs[5]<> 0 OR aPersonInCarIs[0]<> 0 THEN
		bGondelsNotEmpty:=TRUE;
	ELSE
			bGondelsNotEmpty:=FALSE;
	END_IF
	
	
	tonManualSwitch();
	rTrigModulo();
	rTrigGreen(CLK:=bLightGreen);
	rTrigRed(CLK:=bLightRed);
END_ACTION
