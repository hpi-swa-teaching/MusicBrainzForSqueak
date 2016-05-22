file and directory accessing
files
	^ self selectedDirectory
		ifNil: [#()]
		ifNotNil: [self collectFiles: self selectedDirectory]