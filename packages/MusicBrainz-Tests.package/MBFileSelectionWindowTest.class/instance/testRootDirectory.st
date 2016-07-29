TESTING: accessing
testRootDirectory
	self 
		assert: self fileSelectionWindow rootDirectory 
		equals:  {FileDirectory on: ''}