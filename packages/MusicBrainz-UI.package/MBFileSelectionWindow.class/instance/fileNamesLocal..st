file and directory accessing
fileNamesLocal: aFileName
	^ (aFileName findBetweenSubStrs: #('\')) last