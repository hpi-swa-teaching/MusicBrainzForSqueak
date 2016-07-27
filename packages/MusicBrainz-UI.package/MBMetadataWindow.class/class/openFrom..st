opening
openFrom: aMainWindow
	| window |
	window := self new.
	window mainWindow: aMainWindow.
	window selectedEntity: aMainWindow selectedEntity.
	aMainWindow selectedMetadata
	ifNotNil: [window selectedMetadata: (window class getMetadataLabelFor: (window mainWindow selectedMetadata))].
	^ ToolBuilder default open: window