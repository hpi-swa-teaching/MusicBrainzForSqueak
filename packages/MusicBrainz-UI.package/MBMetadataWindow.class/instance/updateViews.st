metadata actions
updateViews 
	self mainWindow 
		changed: #getMetadata;
		changed: #albums;
		changed: #getAlbumName:.
	self 
		selectedMetadata: nil;
		changed: #getMetadataLabels;
		changed: #showInInputField