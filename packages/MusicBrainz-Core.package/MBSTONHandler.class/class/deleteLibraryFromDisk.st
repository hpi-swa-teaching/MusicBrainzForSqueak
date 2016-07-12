saving and loading
deleteLibraryFromDisk

	(MBSTONHandler path entryAt: 'albums.ston' ifAbsent: [nil]) notNil
	ifTrue: [
		MBSTONHandler path deleteFileNamed: 'albums.ston']