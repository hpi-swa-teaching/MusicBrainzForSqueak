accessing
setUp
	super setUp.
	self fileSelectionWindow: MBFileSelectionWindow new.
	self fileSelectionWindow mainWindow: (MBMainWindow new).