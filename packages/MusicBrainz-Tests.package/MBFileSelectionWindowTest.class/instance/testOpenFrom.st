TESTING: opening and building
testOpenFrom
	| window |
	window := MBFileSelectionWindow openFrom: (MBMainWindow new).
	self assert: window class = PluggableSystemWindow.
	window delete
	