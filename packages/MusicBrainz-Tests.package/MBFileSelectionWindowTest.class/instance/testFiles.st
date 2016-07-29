TESTING: accessing
testFiles 
	self 
		assert: (self fileSelectionWindow files) class
		equals: OrderedCollection