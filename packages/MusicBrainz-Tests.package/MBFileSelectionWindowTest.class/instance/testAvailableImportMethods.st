TESTING: class methods
testAvailableImportMethods
	self 
		assert: self fileSelectionWindow class availableImportMethods class = Array;
		assert: self fileSelectionWindow class availableImportMethods size = 2