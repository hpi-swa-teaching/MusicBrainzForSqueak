file and directory accessing
showCurrentFiles
	self 
		files: (self collectFilesFrom: self selectedDirectory);
		changed: #files