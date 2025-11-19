
ACTION Display: 
	IF NOT gSafetyStop AND NOT bSafetyResetReq THEN
		IF bAutoMode THEN
			sVisuMode:='Automatik';
			gDisplay:=16#0505;
			IF bSetup THEN
				sDisplayVisu:='Setup';
			ELSIF eAutoControl=idle THEN
				sDisplayVisu:='Fahre bis Rot';
			END_IF
			CASE eAutoControl OF
				getin:
					sDisplayVisu:='Einsteigen';
					gDisplay:=16#050C;
					
				getout:
					sDisplayVisu:='Aussteigen';
					gDisplay:=16#050C;
					
				spinn:
					sDisplayVisu:='Umlauf';
					gDisplay:=16#050E;
					
				nextRFID:
					sDisplayVisu:='Fahre zu nächster Gondel';
					gDisplay:=16#0505;
				
				nextRFIDout:
					sDisplayVisu:='Fahre zu nächster Gondel';
					gDisplay:=16#0505;
				end: 
					sDisplayVisu:='Alle Gäste Ausgestiegen';
					gDisplay:=16#0505;
				
				idle: 
					gDisplay:=16#0505;
					
			END_CASE
			
					
		ELSE
				sVisuMode:='Manual';
			CASE eSpeed OF
				stop:
					sDisplayVisu:='Keine Bewegung';
					gDisplay:=16#0A0B;
				
				slow:
					sDisplayVisu:='Langsam';
					gDisplay:=16#060B;
				
				fast:
					sDisplayVisu:='Schnell';
					gDisplay:=16#070B;
				normal:
					sDisplayVisu:='Normal';
						gDisplay:=16#050B;
			END_CASE
			
			IF bGondelsNotEmpty AND eSpeed = stop THEN
				sDisplayVisu:='Automatik nicht Möglich';
			END_IF
		END_IF
	ELSE
		sDisplayVisu:='Störung';
		gDisplay:=16#050A;
		
	END_IF
	
	
END_ACTION
