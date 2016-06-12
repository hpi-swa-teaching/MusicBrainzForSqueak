TESTING: methods
testFiles
	self fileSelectionWindow selectedDirectory: (FileDirectory on: Smalltalk imagePath). 
	self fileSelectionWindow showCurrentFiles.
	self assert: self fileSelectionWindow files class = OrderedCollection