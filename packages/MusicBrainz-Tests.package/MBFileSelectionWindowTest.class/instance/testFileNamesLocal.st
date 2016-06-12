TESTING: opening and building
testFileNamesLocal
	| file |
	file := DirectoryEntryFile new setDirectory: 'C:/Users/Beispiel/Desktop' name: 'Datei.mp3' creationTime: 0 modificationTime: 0 fileSize: 0.
	self 
		assert: (self fileSelectionWindow fileLocalName: file)
		equals: 'Datei.mp3'
		description: 'Local file name does not match'