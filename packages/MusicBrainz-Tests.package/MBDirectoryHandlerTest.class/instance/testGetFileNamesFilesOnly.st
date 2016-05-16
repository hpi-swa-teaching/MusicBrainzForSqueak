as yet unclassified
testGetFileNamesFilesOnly
	| testObject |
	testObject := MBDirectoryHandler new.
	testObject 	currentDirectory: ''.
	self assert: [(testObject getFileNamesFilesOnly: true) class == Array]