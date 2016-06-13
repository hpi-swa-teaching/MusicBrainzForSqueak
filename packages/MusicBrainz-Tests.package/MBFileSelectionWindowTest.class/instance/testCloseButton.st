TESTING: UI elements
testCloseButton
	| window |
	window := MBFileSelectionWindow openFrom: MBMainWindow new.
	window model mainWindow importWindow: window.
	window model closeButton.
	self assert: window model mainWindow importWindow = nil.
	window delete