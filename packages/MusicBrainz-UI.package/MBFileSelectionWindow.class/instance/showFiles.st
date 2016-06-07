accessing
showFiles
	self selectedDirectory
		ifNil: [self files: #()]
		ifNotNil: [self files: (self collectFiles: self selectedDirectory). self changed: #files. self shownDirectory: self selectedDirectory]