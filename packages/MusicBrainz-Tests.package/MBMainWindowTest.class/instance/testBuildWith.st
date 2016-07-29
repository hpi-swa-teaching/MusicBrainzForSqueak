TESTING: building
testBuildWith
	| window |
	window := self mainWindow buildWith: MorphicToolBuilder new.
	self assert: PluggableSystemWindow equals: window class