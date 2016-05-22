file and directory accessing
fileNames
	^ self files
		collect: [:entry | entry name]