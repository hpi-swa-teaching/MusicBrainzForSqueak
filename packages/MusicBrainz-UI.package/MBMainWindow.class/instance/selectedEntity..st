accessing
selectedEntity: anObject 
	selectedEntity := anObject.
	self selectedMetadata: nil.
	self 
		changed: #selectedMetadata;
		changed: #isMetadataSelected;
		changed: #selectedEntity;
		changed: #getMetadata;
		changed: #isNewTrack