TESTING: accessing
testImportMethod
	self fileSelectionWindow selectedDirectory: (FileDirectory on: (Smalltalk imagePath, '/albums/')).
	self fileSelectionWindow importRecursively: true.
	self assert: self fileSelectionWindow importRecursively