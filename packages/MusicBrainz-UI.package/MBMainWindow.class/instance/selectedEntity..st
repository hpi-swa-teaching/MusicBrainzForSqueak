accessing
selectedEntity: anObject
	selectedEntity := anObject.
	self 
		changed: #selectedEntity;
		changed: #getMetadata