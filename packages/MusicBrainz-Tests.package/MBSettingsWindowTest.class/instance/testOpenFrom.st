TESTING: resetting
testOpenFrom
	| window |
	window := MBSettingsWindow openFrom: (MBMainWindow new).
	self 
		assert: window class 
		equals: PluggableSystemWindow.
	window delete