
ACTION Lights: 

	gLED1:=0;
	gLED2:=0;
	gLED3:=0;
	gLED4:=0;
	
	CASE nLEDVisu OF
		1:
			gLED1:=TRUE;
		2:
			gLED2:=TRUE;
		3:
			gLED1:=TRUE;
			gLED2:=TRUE;
		4:
			gLED3:=TRUE;
		5:
			gLED1:=TRUE;
			gLED3:=TRUE;
		6:
			gLED2:=TRUE;
			gLED3:=TRUE;
		7:
			gLED1:=TRUE;
			gLED2:=TRUE;
			gLED3:=TRUE;
		8:
			gLED4:=TRUE;
		9:
			gLED1:=TRUE;
			gLED4:=TRUE;
		10:
			gLED2:=TRUE;
			gLED4:=TRUE;
		11:
			gLED1:=TRUE;
			gLED2:=TRUE;
			gLED4:=TRUE;
		12:
			gLED3:=TRUE;
			gLED4:=TRUE;
		13:
			gLED1:=TRUE;
			gLED3:=TRUE;
			gLED4:=TRUE;
		14:
			gLED2:=TRUE;
			gLED3:=TRUE;
			gLED4:=TRUE;
		15:
			gLED1:=TRUE;
			gLED2:=TRUE;
			gLED3:=TRUE;
			gLED4:=TRUE;
		END_CASE

	
	
	
	
	IF bVisuSpotLeft THEN
		gSpotlightLeft:=TRUE;
	ELSE
		gSpotlightLeft:=FALSE;
	END_IF
	
	IF bVisuSpotRight THEN
		gSpotlightRight:=TRUE;
	ELSE
		gSpotlightRight:=FALSE;
	END_IF
	
END_ACTION
