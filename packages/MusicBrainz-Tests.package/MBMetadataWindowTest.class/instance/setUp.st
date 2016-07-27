as yet unclassified
setUp
	super setUp.
	self metadataWindow: MBMetadataWindow new.
	self metadataWindow mainWindow: MBMainWindow new.
	self metadataWindow selectedEntity: MBTrack new	