
ACTION Drive: 
	CASE eSpeed OF
		stop:
			gDriveSpeed1:=0;
			gDriveSpeed2:=0;
			
		slow:
			gDriveSpeed1:=1;
			gDriveSpeed2:=0;
			
		fast:
			gDriveSpeed1:=1;
			gDriveSpeed2:=1;
		
		normal:
			gDriveSpeed1:=0;
			gDriveSpeed2:=1;
			
	END_CASE
END_ACTION
