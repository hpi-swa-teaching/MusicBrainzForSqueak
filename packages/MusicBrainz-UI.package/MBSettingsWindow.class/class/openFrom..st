opening
openFrom: aMainWindow
	| window |
	window := self new.
	window mainWindow: aMainWindow.
	window settings: (Dictionary newFrom: window mainWindow data settings).
	^ ToolBuilder default open: window