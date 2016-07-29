TESTING: file and directory accessing
testRecursivelyFindFilesFrom
	| aDirectory |
	aDirectory := FileDirectory on: (Smalltalk imagePath).
	self 
		assert: (self fileSelectionWindow recursivelyFindFilesFrom: aDirectory) class 
		equals: OrderedCollection