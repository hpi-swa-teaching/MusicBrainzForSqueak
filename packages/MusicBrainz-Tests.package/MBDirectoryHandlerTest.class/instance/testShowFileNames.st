as yet unclassified
testShowFileNames
	| testObject |
	testObject := MBDirectoryHandler new.
	testObject 	currentDirectory: ''.
	self assert: [(testObject showFileNames) class == Array]