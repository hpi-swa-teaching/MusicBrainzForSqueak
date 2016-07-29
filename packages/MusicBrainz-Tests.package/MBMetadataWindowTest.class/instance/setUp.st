accessing
setUp
	super setUp.
	self metadataWindow: MBMetadataWindow new.
	self metadataWindow mainWindow: MBMainWindow new.
	self metadataWindow mainWindow selectedEntity: MBTrack new	