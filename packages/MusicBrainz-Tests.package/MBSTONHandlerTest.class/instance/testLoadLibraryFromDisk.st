as yet unclassified
testLoadLibraryFromDisk
	| loadedLibrary |
	MBSTONHandler saveLibraryToDisk: MBData new albums.
	loadedLibrary := MBSTONHandler loadLibraryFromDisk.
	self 
		assert: loadedLibrary class
		equals: OrderedCollection;
		
		assert: loadedLibrary first class
		equals: MBAlbum;
		
		assert: loadedLibrary first metadata
		equals: MBData new albums first metadata
	