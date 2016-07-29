TESTING: class methods
testLabelForImportButton
	self 
		assert: self fileSelectionWindow class labelForImportButton 
		equals: 'Import'