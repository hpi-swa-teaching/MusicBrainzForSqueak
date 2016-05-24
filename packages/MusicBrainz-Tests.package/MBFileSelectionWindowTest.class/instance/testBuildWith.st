TESTING: opening and building
testBuildWith
	| window |
	window := self fileSelectionWindow buildWith: MorphicToolBuilder new.
	self assert: window class = PluggableSystemWindow