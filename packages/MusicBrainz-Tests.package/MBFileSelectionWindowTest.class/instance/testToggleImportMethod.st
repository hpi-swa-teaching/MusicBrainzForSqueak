TESTING: UI elements
testToggleImportMethod
	self fileSelectionWindow selectedDirectory: (FileDirectory on: Smalltalk imagePath).
	self fileSelectionWindow toggleImportMethod.
	self 
		assert: self fileSelectionWindow importRecursively
		equals: true
		description: 'Should be true'