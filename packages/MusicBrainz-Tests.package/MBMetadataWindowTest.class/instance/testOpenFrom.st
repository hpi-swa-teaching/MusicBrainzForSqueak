TESTING: building
testOpenFrom
	| window |
	window := MBMetadataWindow openFrom: (MBMainWindow new selectedEntity: MBMockData mockAlbum).
	self 
		assert: window class 
		equals: PluggableSystemWindow.
	window delete