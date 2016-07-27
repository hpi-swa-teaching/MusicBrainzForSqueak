as yet unclassified
testResetSettingsToDefault
	self settingsWindow resetSettingsToDefault.
	self assert: (self settingsWindow settings) equals: (Dictionary newFrom: self mainWindow data settings)