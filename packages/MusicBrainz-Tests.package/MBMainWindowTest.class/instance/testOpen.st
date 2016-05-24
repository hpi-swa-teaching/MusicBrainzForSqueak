TESTING: opening and building
testOpen
	"The intention was to control the start up of the window, but the test fails, because it takes too long"
	"| window |
	window := MBMainWindow open.
	self assert: window class = PluggableSystemWindow.
	window delete"
	