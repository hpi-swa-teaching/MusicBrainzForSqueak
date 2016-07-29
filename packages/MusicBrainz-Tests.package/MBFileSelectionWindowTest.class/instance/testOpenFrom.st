TESTING: class methods
testOpenFrom
	| window |
	window := MBFileSelectionWindow openFrom: (MBMainWindow new).
	self 
		assert: window class 
		equals:  PluggableSystemWindow.
	window delete
	