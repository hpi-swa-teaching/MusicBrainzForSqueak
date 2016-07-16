deleting
deleteLibraryFromDisk
	(self path
			entryAt: 'albums.ston'
			ifAbsent: []) notNil
		ifTrue: [self path deleteFileNamed: 'albums.ston']