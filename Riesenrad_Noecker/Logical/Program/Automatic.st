
ACTION Automatic: 
	gASILight1:=FALSE;
	CASE eAutoControl OF
		idle:
			eSpeed:=normal;
			IF gRFIDColor = aRFIDColors[0] THEN //Fahre bis Rot
				eSpeed:=stop;
				gLightGreen:=TRUE;
				RisingLightBarrier.CLK:=gReciever;
				eAutoControl:=getin;
				nLastRFIDAuto:=0;
				nSpinnCountIs:=0;
			END_IF
		
		getin:
			gLightGreen:=TRUE;
			gLightRed:=FALSE;
			IF RisingLightBarrier.Q THEN
				aPersonInCarIs[nRFIDArrIndex]:=aPersonInCarIs[nRFIDArrIndex]+1;
			END_IF

			IF aPersonInCarIs[nRFIDArrIndex]=aPersonInCarSet[nRFIDArrIndex] THEN
				IF (NOT gDriveDirection AND nRFIDArrIndex=1) OR ( gDriveDirection AND nRFIDArrIndex=5) THEN
					eAutoControl:=spinn;
				ELSE
					eAutoControl:=nextRFID;
					gLightGreen:=FALSE;
					gLightRed:=TRUE;
				END_IF
				
			END_IF


			
	
		nextRFID:
			gLightGreen:=FALSE;
			gLightRed:=TRUE;
			eSpeed:=slow;
			gLightGreen:=FALSE;
			gLightRed:=TRUE;
			IF gRFIDColor <> 0 AND gRFIDColor <> nLastRFIDAuto THEN
				eSpeed:=stop;
				nLastRFIDAuto:=gRFIDColor;
				gLightGreen:=TRUE;
				gTransmitter:=TRUE;
				bNextRFID:=FALSE;
				eAutoControl:=getin;
			END_IF

		
		spinn:
			gLightGreen:=FALSE;
			gLightRed:=TRUE;
			rRFIDTrack.CLK:=nLastRFID = aRFIDColors[0];
			eSpeed:=fast;
			bNextRFID:=FALSE;
			IF nSpinnCountIs = nSpinnCountSet THEN
				eSpeed:=normal;
				eAutoControl:=getout;
				nSpinnCountIs:=0;
			ELSIF rRFIDTrack.Q THEN
				nSpinnCountIs:=nSpinnCountIs+1;
			END_IF

			
		getout:
			eSpeed:=stop;
			gLightGreen:=FALSE;
			gLightRed:=TRUE;
			IF RisingLightBarrier.Q THEN
				aPersonInCarIs[nRFIDArrIndex]:=aPersonInCarIs[nRFIDArrIndex]-1;
			END_IF

			IF aPersonInCarIs[nRFIDArrIndex]=0 THEN
				IF (NOT gDriveDirection AND nRFIDArrIndex=1) OR (gDriveDirection AND nRFIDArrIndex=5) THEN
					eAutoControl:=end;
				ELSE
					eAutoControl:=nextRFIDout;
					gLightGreen:=FALSE;
					gLightRed:=TRUE;
				END_IF
				
			END_IF

			
		nextRFIDout:
			gLightGreen:=FALSE;
			gLightRed:=TRUE;
			
				eSpeed:=slow;
				gLightGreen:=FALSE;
				gLightRed:=TRUE;
			IF gRFIDColor <> 0 AND  gRFIDColor <> nLastRFIDAuto THEN
				nLastRFIDAuto:=gRFIDColor;
					eSpeed:=stop;
					gLightGreen:=TRUE;
					gTransmitter:=TRUE;
					eAutoControl:=getout;
					bNextRFID:=FALSE;

				END_IF
		end:
			gASILight1:=TRUE;
			rAsiStart.CLK:=gASIStart;
			IF rAsiStart.Q THEN
				tonTimerRun.IN:=TRUE;
			END_IF
			
			IF tonTimerRun.Q AND NOT gASIStart THEN
				tonTimerRun.IN:=FALSE;
				bSetup:=TRUE;
				gASILight1:=FALSE;
				eAutoControl:=idle;
			
			END_IF
		
		
		
		
	END_CASE
	RisingLightBarrier.CLK:=gReciever;
	RisingLightBarrier();
	tonTimerRun(PT:=T#500ms);
	rSetup();
	rRFIDTrack();
	rAsiStart();
END_ACTION
