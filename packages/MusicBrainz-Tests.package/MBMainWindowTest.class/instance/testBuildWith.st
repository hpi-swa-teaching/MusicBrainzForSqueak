TESTING: opening and building
testBuildWith
	"The intention was to control the start up of the window, but the test fails, because it takes too long"
	"| window |
	window := self mainWindow buildWith: MorphicToolBuilder new.
	self assert: window class = PluggableSystemWindow"