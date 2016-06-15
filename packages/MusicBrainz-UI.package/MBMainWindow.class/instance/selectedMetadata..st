accessing
selectedMetadata: anObject
	selectedMetadata := anObject.
	self 
		changed: self selectedMetadata;
		changed: self isMetadataSelected
