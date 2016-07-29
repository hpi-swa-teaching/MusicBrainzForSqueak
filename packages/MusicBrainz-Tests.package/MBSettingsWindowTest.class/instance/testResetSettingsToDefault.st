TESTING: resetting
testResetSettingsToDefault
	self settingsWindow resetSettingsToDefault.
	self 
		assert: (self settingsWindow settings) 
		equals: (Dictionary newFrom: self settingsWindow mainWindow data settings)