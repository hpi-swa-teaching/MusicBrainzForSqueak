TESTING: methods
testCollectFiles
	| files | 
	files := self fileSelectionWindow collectFiles: (FileDirectory on: Smalltalk imagePath).
	self assert: files class = OrderedCollection