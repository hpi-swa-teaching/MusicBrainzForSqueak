as yet unclassified
testSaveToFile
	MBSTONHandler save: MBMockData mockAlbum toFile: 'testfile.ston'.
	self 
		assert: (MBSTONHandler path fileExists: 'testfile.ston')
		equals: true.
	MBSTONHandler path deleteFileNamed: 'testfile.ston'