as yet unclassified
testDeleteLibraryFromDisk 
	MBSTONHandler deleteLibraryFromDisk.
	self 
		assert: (MBSTONHandler path fileExists: 'albums.ston')
		equals: false