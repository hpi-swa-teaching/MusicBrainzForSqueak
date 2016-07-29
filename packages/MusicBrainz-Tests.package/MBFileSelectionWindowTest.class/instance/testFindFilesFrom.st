TESTING: file and directory accessing
testFindFilesFrom
	| aDirectory |
	aDirectory := FileDirectory on: Smalltalk imagePath.
	self 
		assert: (self fileSelectionWindow findFilesFrom: aDirectory) class 
		equals: OrderedCollection