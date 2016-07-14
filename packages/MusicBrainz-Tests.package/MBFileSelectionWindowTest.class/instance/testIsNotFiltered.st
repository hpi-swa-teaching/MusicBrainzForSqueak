TESTING: file and directory accessing
testIsNotFiltered
	| file |
	file := DirectoryEntryFile new setDirectory: 'C:/Users/Beispiel/Desktop' name: 'Datei.mp3' creationTime: 0 modificationTime: 0 fileSize: 0.
	self assert: (self fileSelectionWindow isSupported: file) = true.
	
	file := DirectoryEntryFile new setDirectory: 'C:/Users/Beispiel/Desktop' name: 'Datei.flac' creationTime: 0 modificationTime: 0 fileSize: 0.
	self assert: (self fileSelectionWindow isSupported: file) = true.
	
	file := DirectoryEntryFile new setDirectory: 'C:/Users/Beispiel/Desktop' name: 'Datei.txt' creationTime: 0 modificationTime: 0 fileSize: 0.
	self assert: (self fileSelectionWindow isSupported: file) = false.
	
	file := DirectoryEntryFile new setDirectory: 'C:/Users/Beispiel/Desktop' name: '.Datei.mp3' creationTime: 0 modificationTime: 0 fileSize: 0.
	self assert: (self fileSelectionWindow isSupported: file) = false
