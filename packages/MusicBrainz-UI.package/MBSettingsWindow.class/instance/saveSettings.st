as yet unclassified
saveSettings
	self mainWindow data settings: self settings.
	self settings: (Dictionary newFrom: self settings). "We really need a new object here to avoid unwanted changes in data"
	self mainWindow data applySettings