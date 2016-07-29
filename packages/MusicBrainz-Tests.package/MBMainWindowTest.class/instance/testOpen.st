TESTING: building
testOpen
	| window |
	window := MBMainWindow open.
	self 	
		assert: PluggableSystemWindow 
		equals: window class.
	window delete.