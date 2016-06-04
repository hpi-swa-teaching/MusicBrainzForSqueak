TESTING: opening and building
testOpen
"	| window |
	window := MBFileSelectionWindow open.
	self assert: window class = PluggableSystemWindow.
	window delete"
	