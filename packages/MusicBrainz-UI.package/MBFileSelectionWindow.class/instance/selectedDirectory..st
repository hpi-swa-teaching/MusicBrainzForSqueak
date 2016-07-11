accessing
selectedDirectory: anObject 
	selectedDirectory := anObject.
	self 
		files: #();
		importMethod: false;
		changed: #selectedDirectory;
		changed: #files