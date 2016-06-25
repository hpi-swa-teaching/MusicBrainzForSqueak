accessing
updateMetadata: aString
	self selectedMetadata
	ifNotNil: [
		self mainWindow selectedEntity metadata at: self selectedMetadata put: aString.
		self mainWindow 
			changed: #getMetadata.
		self 
			selectedMetadata: nil;
			changed: #getMetadata;
			changed: #showInInputField
	]