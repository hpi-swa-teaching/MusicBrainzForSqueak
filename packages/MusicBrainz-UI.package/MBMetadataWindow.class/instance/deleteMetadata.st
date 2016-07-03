metadata actions
deleteMetadata
	self 
		updateMetadata: '';
		getMetadataLabels.
	self mainWindow selectedMetadata: nil