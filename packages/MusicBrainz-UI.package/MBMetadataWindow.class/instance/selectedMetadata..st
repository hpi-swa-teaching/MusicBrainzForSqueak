accessing
selectedMetadata: anObject
	selectedMetadata := anObject.
	self 
		changed: #showInInputField;
		changed: #isMetadataSelected