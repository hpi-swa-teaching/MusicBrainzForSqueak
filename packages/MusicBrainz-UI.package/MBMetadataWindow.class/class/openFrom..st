as yet unclassified
openFrom: aMainWindow
	| window |
	window := MBMetadataWindow new.
	window mainWindow: aMainWindow.
	aMainWindow selectedMetadata
	ifNotNil: [window selectedMetadata: (MBMetadataWindow getMetadataLabelFor: (window mainWindow selectedMetadata))].
	^ ToolBuilder default open: window