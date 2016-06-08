accessing
selectedEntity: anObject
	selectedEntity := anObject.
	self selectedMetadata: nil.
	self 
		changed: #selectedMetadata;
		changed: #isActive;
		changed: #selectedEntity;
		changed: #getMetadata