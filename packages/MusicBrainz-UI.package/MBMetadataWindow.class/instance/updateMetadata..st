accessing
updateMetadata: aString
	self selectedMetadata
	ifNotNil: [
		self mainWindow data updateMetadataIn: self mainWindow selectedEntity set: self selectedMetadata to: aString asString.
		self mainWindow 
			changed: #getMetadata;
			changed: #albums.
		self 
			selectedMetadata: nil;
			changed: #getMetadata;
			changed: #showInInputField
	]