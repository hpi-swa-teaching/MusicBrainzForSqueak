building
clearViews
	
	self localMetadata: nil.
	self mBMetadata: nil.
	self changed: #getMetadataLabels;
		changed: #getLocalMetadata;
		changed: #getMBMetadata.
	self mainWindow changed: #getMetadata;
		changed: #albums.