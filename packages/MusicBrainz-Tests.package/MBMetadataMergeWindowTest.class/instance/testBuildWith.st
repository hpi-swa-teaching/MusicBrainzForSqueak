TESTING: building
testBuildWith
	| window |
	window := self metadataMergeWindow buildWith: MorphicToolBuilder new.
	self 
		assert: PluggableSystemWindow
		equals: window class