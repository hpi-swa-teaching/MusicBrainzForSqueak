TESTING: file and directory accessing
testCollectFilesFrom
	| files | 
	files := self fileSelectionWindow collectFilesFrom: (FileDirectory on: Smalltalk imagePath).
	self assert: files class = OrderedCollection