accessing
selectedDirectory: anObject 
	selectedDirectory := anObject.
	self changed: #selectedDirectory.
	self changed: #fileNames