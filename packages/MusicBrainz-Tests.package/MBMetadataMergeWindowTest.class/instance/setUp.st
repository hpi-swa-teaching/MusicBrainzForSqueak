accessing
setUp

	super setUp.
	self metadataMergeWindow: MBMetadataMergeWindow new.
	self metadataMergeWindow mainWindow: MBMainWindow new.
	self metadataMergeWindow mainWindow selectedEntity: MBMockData mockAlbum 