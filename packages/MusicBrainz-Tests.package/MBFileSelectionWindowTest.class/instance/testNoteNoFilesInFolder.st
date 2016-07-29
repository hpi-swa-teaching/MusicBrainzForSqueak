TESTING: accessing
testNoteNoFilesInFolder
	self 
		assert: self fileSelectionWindow class noteNoFilesInFolder 
		equals: 'No music files in this folder/subfolders'