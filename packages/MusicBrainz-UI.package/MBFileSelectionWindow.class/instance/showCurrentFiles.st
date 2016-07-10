file and directory accessing
showCurrentFiles
	self selectedDirectory
		ifNil: [self files: #()]
		ifNotNil: 
			[self
				files: (self collectFilesFrom: self selectedDirectory);
				changed: #files]