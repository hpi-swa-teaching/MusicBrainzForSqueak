building
clearViews
	
	self localMetadata: nil.
	self mBMetadata: nil.
	self changed: #getMetadataLabels.
	self changed: #getLocalMetadata.
	self changed: #getMBMetadata.
	self mainWindow changed: #getMetadata