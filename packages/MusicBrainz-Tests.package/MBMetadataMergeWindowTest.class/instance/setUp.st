accessing
setUp

	super setUp.
	self metadataMergeWindow: MBMetadataMergeWindow new.
	self mainWindow: MBMainWindow new.
	self metadataMergeWindow mainWindow: self mainWindow.
	self selectedEntity: MBMockData mockAlbum.
	self metadataMergeWindow selectedEntity: self selectedEntity 