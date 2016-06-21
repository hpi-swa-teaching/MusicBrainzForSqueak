as yet unclassified
testSaveSTONOf
	| testObject answerString |
	testObject := MBMockData mockAlbum.
	MBSTONHandler saveSTONOf: testObject.
	answerString := MBSTONHandler loadFromLocalSTON.
	self assert: answerString metadata equals: testObject metadata.
	MBSTONHandler path deleteFileNamed: 'albums.ston'