file and directory accessing
fileNamesLocal: aFileName
	| fileName |
	fileName := (aFileName findBetweenSubStrs: #('\')) last.
	^ (fileName copyFrom: 1 to: fileName size - 1)