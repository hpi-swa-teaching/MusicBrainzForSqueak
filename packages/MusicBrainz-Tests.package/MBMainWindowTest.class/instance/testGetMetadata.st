as yet unclassified
testGetMetadata

	self mainWindow selectedEntity: MBMockData mockAlbum.
	self assert: self mainWindow getMetadata
	equals: #('Media: Digital Media' 'Artist: Kygo' 'Label: Ensis Records' 'Title: Epsilon') asOrderedCollection