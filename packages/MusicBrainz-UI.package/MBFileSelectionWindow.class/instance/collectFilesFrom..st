file and directory accessing
collectFilesFrom: aDirectory
	self importRecursively
		ifTrue: [	^ self recursivelyFindFilesFrom: aDirectory]
		ifFalse: [ ^ self findFilesFrom: aDirectory]