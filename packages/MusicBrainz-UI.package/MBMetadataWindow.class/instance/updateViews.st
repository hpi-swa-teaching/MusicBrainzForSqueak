metadata actions
updateViews 
	self mainWindow 
		changed: #getMetadata;
		changed: #albums.
	self 
		selectedMetadata: nil;
		changed: #getMetadataLabels;
		changed: #showInInputField