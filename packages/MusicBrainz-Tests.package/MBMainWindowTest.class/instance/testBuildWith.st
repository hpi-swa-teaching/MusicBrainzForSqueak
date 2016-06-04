as yet unclassified
testBuildWith
	| window |
	window := self mainWindow buildWith: MorphicToolBuilder new.
	self assert: window class = PluggableSystemWindow