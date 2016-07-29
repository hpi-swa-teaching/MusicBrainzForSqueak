TESTING: deleting
testDeleteLibraryFromDisk 
	MBSTONHandler deleteLibraryFromDisk.
	self 
		assert: (MBSTONHandler path fileExists: 'albums.ston')
		equals: false