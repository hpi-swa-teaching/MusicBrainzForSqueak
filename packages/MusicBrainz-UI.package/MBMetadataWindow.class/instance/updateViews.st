metadata actions
updateViews 
	self mainWindow 
		changed: #getMetadata;
		changed: #albums;
		changed: #getEntityName:.
	self 
		selectedMetadata: nil;
		changed: #getMetadataLabels;
		changed: #showInInputField