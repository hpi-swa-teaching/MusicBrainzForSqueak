accessing
selectedDirectory: anObject 
	selectedDirectory := anObject.
	self 
		files: #();
		importRecursively: false;
		changed: #selectedDirectory;
		changed: #files