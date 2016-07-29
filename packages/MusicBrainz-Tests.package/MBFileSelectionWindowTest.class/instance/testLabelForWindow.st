TESTING: class methods
testLabelForWindow
	self 
		assert: self fileSelectionWindow class labelForWindow
		equals: 'Select a file directory'