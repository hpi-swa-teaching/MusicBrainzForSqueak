building
clearViews
	self 
		localMetadata: nil;
		mBMetadata: nil;
		changed: #getMetadataLabels;
		changed: #getLocalMetadata;
		changed: #getMBMetadata.
	self mainWindow 
		changed: #getMetadata;
		changed: #albums.