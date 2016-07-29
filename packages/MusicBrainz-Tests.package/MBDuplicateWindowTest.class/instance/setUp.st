accessing
setUp
	super setUp.
	self duplicateWindow: MBDuplicateWindow new.
	self duplicateWindow mainWindow: MBMainWindow new.
	