as yet unclassified
testGetMetadataAlbum

	self mainWindow selectedEntity: MBMockData mockAlbum.
	self assert: self mainWindow getMetadataAlbum
	equals: #('Album: Epsilon' 'Artist: Kygo' 'Year: ' 'Label: Ensis Records' 'Media: Digital Media' 'MBID: 1cdbe3b6-99bb-4a50-9950-29ebc4fcb194') asOrderedCollection