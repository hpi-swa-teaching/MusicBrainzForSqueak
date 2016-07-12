as yet unclassified
testSaveSTONOf
	| testObject answerString |
	testObject := MBMockData mockAlbum.
	MBSTONHandler saveLibraryToDisk: testObject.
	answerString := MBSTONHandler loadLibraryFromDisk.
	self assert: answerString metadata equals: testObject metadata.
	MBSTONHandler path deleteFileNamed: 'albums.ston'