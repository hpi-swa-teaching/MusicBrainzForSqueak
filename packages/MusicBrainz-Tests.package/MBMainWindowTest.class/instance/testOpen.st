as yet unclassified
testOpen
	| window |
	window := MBMainWindow open.
	self assert: window class = PluggableSystemWindow.
	window delete.