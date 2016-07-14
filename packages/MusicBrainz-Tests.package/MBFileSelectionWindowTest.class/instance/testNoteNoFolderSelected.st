TESTING: UI elements
testNoteNoFolderSelected
	self 
		assert: self fileSelectionWindow class noteNoFolderSelected
		equals: 'Please select a folder first!'
		description: 'Someone changed this note'
	