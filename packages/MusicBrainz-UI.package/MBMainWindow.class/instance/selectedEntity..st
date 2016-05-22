accessing
selectedEntity: anObject
	selectedEntity := anObject.
	self changed: #selectedEntity.
	self changed: #getMetadata 