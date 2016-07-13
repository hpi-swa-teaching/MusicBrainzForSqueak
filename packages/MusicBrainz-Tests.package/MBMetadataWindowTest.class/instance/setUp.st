as yet unclassified
setUp
	super setUp.
	self metadataWindow: MBMetadataWindow new.
	self mainWindow: MBMainWindow new.
	self metadataWindow selectedEntity: MBTrack new.
	self mainWindow selectedEntity: self metadataWindow selectedEntity.
	self metadataWindow mainWindow: mainWindow 
	