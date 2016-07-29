TESTING: loading
testLoadFromFile
	| loadedSton |
	MBSTONHandler save: MBMockData mockAlbum toFile: 'testfile.ston'.
	loadedSton := MBSTONHandler loadFromFile: 'testfile.ston'.
	self 
		assert: loadedSton metadata
		equals: MBMockData mockAlbum metadata.
	MBSTONHandler path deleteFileNamed: 'testfile.ston'