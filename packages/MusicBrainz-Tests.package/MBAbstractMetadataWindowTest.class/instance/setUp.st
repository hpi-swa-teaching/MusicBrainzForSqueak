as yet unclassified
setUp
	super setUp.
	self abstractMetadataWindow: MBAbstractMetadataWindow new.
	self abstractMetadataWindow mainWindow: MBMainWindow new.
	self abstractMetadataWindow mainWindow selectedEntity: MBMockData mockAlbum.
	self abstractMetadataWindow selectedEntity: MBMockData mockAlbum