accessing
importMethod: anObject
	importMethod := anObject.
	self 
		showCurrentFiles;
		changed: #files