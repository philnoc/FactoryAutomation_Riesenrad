

PROGRAM _INIT
	(* Insert code here *)
	
	bSafetyResetReq:=TRUE;
	
	aPersonInCarSet[0]:=5;
	aPersonInCarSet[1]:=5;
	aPersonInCarSet[2]:=5;
	aPersonInCarSet[3]:=5;
	aPersonInCarSet[4]:=5;
	aPersonInCarSet[5]:=5;
	
	aRFIDColors[0]:=125; 	//red
	aRFIDColors[1]:=1280;	//pruple
	aRFIDColors[2]:=1536;	//white
	aRFIDColors[3]:=512;	//blue
	aRFIDColors[4]:=1024;	//yellow
	aRFIDColors[5]:=256;	//green
	
	bAutoMode:=TRUE;
	bSetup:=TRUE;
	gTransmitter:=TRUE;
	gASILight1:=FALSE;
	gASILight2:=FALSE;
	gASILight3:=FALSE;
	nLEDVisu:=0;
	nSpinnCountSet:=4;
	
	
	bAutomodeChange:=FALSE;
	bAutoMode:=FALSE;
	bModuloBusy:=FALSE;
END_PROGRAM