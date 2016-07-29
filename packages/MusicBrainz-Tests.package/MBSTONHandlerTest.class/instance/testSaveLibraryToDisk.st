TESTING: saving
testSaveLibraryToDisk
	MBSTONHandler saveLibraryToDisk: MBData new albums.
	self 
		assert: (MBSTONHandler path fileExists: 'albums.ston')
		equals: true