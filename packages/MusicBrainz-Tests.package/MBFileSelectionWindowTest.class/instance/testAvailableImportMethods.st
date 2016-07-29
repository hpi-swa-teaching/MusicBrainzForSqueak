TESTING: class methods
testAvailableImportMethods
	self 
		assert: self fileSelectionWindow class availableImportMethods class 
		equals: Array;
		assert: self fileSelectionWindow class availableImportMethods size
		equals: 2