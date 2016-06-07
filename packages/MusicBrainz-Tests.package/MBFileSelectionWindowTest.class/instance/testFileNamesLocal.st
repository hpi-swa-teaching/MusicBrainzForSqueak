TESTING: opening and building
testFileNamesLocal
	| fullPath |
	fullPath := 'C:\Users\Benutzer\Desktop\Datei.mp3'.
	self 
		assert: (self fileSelectionWindow fileNamesLocal: fullPath)
		equals: 'Datei.mp3'
		description: 'Local file name does not match'