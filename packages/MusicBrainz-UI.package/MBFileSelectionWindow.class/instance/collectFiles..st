file and directory accessing
collectFiles: aDirectory
	self importMethod = 2
	ifTrue: [	^ self recursivelyFindFilesFrom: aDirectory].
	self importMethod = 1
	ifTrue: [ ^ self findFilesFrom: aDirectory]