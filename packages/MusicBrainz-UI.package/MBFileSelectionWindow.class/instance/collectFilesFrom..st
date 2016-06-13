file and directory accessing
collectFilesFrom: aDirectory
	self importMethod = 2
	ifTrue: [	^ self recursivelyFindFilesFrom: aDirectory].
	self importMethod = 1
	ifTrue: [ ^ self findFilesFrom: aDirectory]