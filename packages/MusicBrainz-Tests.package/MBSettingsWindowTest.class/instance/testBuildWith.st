TESTING: building
testBuildWith
	| window |
	window := self settingsWindow buildWith: MorphicToolBuilder new.
	self 
		assert: window class
		equals: PluggableSystemWindow