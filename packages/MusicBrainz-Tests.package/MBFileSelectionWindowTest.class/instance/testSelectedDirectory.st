TESTING: UI elements
testSelectedDirectory
	self fileSelectionWindow selectedDirectory: (FileDirectory on: Smalltalk imagePath).
	self 
		assert: (self fileSelectionWindow selectedDirectory class) superclass
		equals: FileDirectory
		description: 'Should be a FileDirectory'