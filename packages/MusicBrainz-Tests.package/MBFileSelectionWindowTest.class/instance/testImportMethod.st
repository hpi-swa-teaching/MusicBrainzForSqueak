TESTING: accessing
testImportMethod
	self fileSelectionWindow importMethod: 2.
	self assert: self fileSelectionWindow importMethod = 2