accessing
testOpenFrom
	| window |
	window := MBMetadataMergeWindow openFrom: (MBMainWindow new selectedEntity: MBMockData mockAlbum).
	self assert: window class = PluggableSystemWindow.
	window delete