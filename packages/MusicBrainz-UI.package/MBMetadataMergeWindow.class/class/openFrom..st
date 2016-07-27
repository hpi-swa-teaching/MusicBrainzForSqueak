opening
openFrom: aMainWindow
	| window |
	window := self new.
	window mainWindow: aMainWindow.
	window selectedEntity: aMainWindow selectedEntity.
	^ ToolBuilder default open: window