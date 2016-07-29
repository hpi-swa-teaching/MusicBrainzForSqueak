TESTING: UI elements
testBuildWith
	| window |
	window := self fileSelectionWindow buildWith: MorphicToolBuilder new.
	self 
		assert: window class 
		equals: PluggableSystemWindow