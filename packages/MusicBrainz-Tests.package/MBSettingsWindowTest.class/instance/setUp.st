as yet unclassified
setUp
	super setUp.
	self settingsWindow: MBSettingsWindow new.
	self mainWindow: MBMainWindow new.
	self settingsWindow mainWindow: self mainWindow.
	self settingsWindow settings: (Dictionary newFrom: self settingsWindow mainWindow data settings) 
	