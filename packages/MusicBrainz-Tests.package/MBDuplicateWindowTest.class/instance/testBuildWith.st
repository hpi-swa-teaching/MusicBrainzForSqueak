TESTING: building
testBuildWith
	| window |
	window := self duplicateWindow buildWith: MorphicToolBuilder new.
	self 
		assert: window class 
		equals: PluggableSystemWindow