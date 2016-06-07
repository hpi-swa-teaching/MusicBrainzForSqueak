TESTING: methods
testFileNames
	self fileSelectionWindow selectedDirectory: (FileDirectory on: Smalltalk imagePath).
	self fileSelectionWindow showFiles.
	self assert: self fileSelectionWindow files class = OrderedCollection