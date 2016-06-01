file and directory accessing
fileNamesLocal: aFileNames
	^ (aFileNames findBetweenSubStrs: #('\')) last