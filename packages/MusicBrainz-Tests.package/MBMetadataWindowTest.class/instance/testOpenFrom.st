as yet unclassified
testOpenFrom
	| window |
	window := MBMetadataWindow openFrom: (MBMainWindow new selectedEntity: MBMockData mockAlbum).
	self assert: window class = PluggableSystemWindow.
	window delete