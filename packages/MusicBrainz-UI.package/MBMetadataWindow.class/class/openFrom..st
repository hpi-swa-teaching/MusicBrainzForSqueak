as yet unclassified
openFrom: aMainWindow
	| window |
	window := MBMetadataWindow new.
	window mainWindow: aMainWindow.
	aMainWindow selectedMetadata
	ifNotNil: [window selectedMetadata: ((window splitMetadata: (window mainWindow selectedMetadata)) at: #label)].
	^ ToolBuilder default open: window