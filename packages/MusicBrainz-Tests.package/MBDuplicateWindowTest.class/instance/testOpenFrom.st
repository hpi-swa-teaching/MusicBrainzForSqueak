TESTING: building
testOpenFrom
	| window |
	window := MBDuplicateWindow openFrom: (MBMainWindow new).
	self 
		assert: window class 
		equals: PluggableSystemWindow.
	window delete
	