as yet unclassified
testResetSettings
	self settingsWindow resetSettings.
	self assert: (self settingsWindow settings) equals: (Dictionary newFrom: self mainWindow data settings)