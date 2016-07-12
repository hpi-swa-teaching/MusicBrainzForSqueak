TESTING: accessing
testImportMethod
	self fileSelectionWindow importRecursively: 2.
	self assert: self fileSelectionWindow importRecursively = 2