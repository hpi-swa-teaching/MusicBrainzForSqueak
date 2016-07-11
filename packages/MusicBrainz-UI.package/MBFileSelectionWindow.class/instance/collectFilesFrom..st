file and directory accessing
collectFilesFrom: aDirectory
	self importMethod
		ifTrue: [	^ self recursivelyFindFilesFrom: aDirectory]
		ifFalse: [ ^ self findFilesFrom: aDirectory]