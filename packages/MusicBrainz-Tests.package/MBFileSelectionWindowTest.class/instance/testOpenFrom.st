TESTING: class methods
testOpenFrom
	| window |
	window := MBFileSelectionWindow openFrom: (MBMainWindow new).
	self assert: window class = PluggableSystemWindow.
	window delete
	