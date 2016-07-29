TESTING: UI elements
testShowCurrentFiles
	self fileSelectionWindow selectedDirectory: (FileDirectory on: (Smalltalk imagePath, '/albums/')).
	self fileSelectionWindow showCurrentFiles.
	self 
		assert: self fileSelectionWindow files class
		equals: OrderedCollection 
		description: 'Should return an ordered collection'