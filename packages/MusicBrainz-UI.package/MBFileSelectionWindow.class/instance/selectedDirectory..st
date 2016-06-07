accessing
selectedDirectory: anObject 
	selectedDirectory := anObject.
	self 
		files: #();
		changed: #selectedDirectory;
		changed: #files