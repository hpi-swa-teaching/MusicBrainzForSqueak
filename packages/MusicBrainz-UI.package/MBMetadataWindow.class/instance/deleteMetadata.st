as yet unclassified
deleteMetadata
	self 
		updateMetadata: '';
		getMetadata.
	self mainWindow selectedMetadata: nil