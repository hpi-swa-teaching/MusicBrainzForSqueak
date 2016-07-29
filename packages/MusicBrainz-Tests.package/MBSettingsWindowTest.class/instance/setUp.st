accessing
setUp
	super setUp.
	self settingsWindow: MBSettingsWindow new.
	self settingsWindow mainWindow: MBMainWindow new.
	self settingsWindow settings: (Dictionary newFrom: self settingsWindow mainWindow data settings) 
	