as yet unclassified
openFrom: aMainWindow
	| window |
	window := MBFileSelectionWindow new.
	window mainWindow: aMainWindow.
	^ ToolBuilder default open: window