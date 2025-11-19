
ACTION Visu: 

	FOR i:=0 TO 5 DO
		aVisuRFIDCol[i]:=0;
	END_FOR
	IF gRFIDColor <> 0 THEN
		nLastRFID:=gRFIDColor;
		
	END_IF
	
	
	CASE nLastRFID OF
		125:
			nCurrentPerson:=aPersonInCarIs[0];
			aVisuRFIDCol[0]:=TRUE;
			nRFIDArrIndex:=0;
			
		512:
			nCurrentPerson:=aPersonInCarIs[3];
			aVisuRFIDCol[3]:=TRUE;
			nRFIDArrIndex:=3;
		256:
			nCurrentPerson:=aPersonInCarIs[5];
			aVisuRFIDCol[5]:=TRUE;
			nRFIDArrIndex:=5;
		1536:
			nCurrentPerson:=aPersonInCarIs[2];
			aVisuRFIDCol[2]:=TRUE;
			nRFIDArrIndex:=2;
		1280:
			nCurrentPerson:=aPersonInCarIs[1];
			aVisuRFIDCol[1]:=TRUE;
			nRFIDArrIndex:=1;
		1024:
			nCurrentPerson:=aPersonInCarIs[4];
			aVisuRFIDCol[4]:=TRUE;
		nRFIDArrIndex:=4;
	END_CASE
	
	IF bSetup AND gDriveDirection THEN
		sVisuDrehrichtung:='gegen Uhr';
	ELSIF bSetup AND NOT gDriveDirection THEN
		sVisuDrehrichtung:='mit Uhr';
	END_IF
		
	
END_ACTION
