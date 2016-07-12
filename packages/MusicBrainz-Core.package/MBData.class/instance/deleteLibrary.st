library
deleteLibrary
	
	(UIManager default confirm: 'Do you really want to delete your music library?' trueChoice: 'Delete it!' falseChoice: 'Oh wait! No!' )
		ifTrue: [MBSTONHandler deleteLibraryFromDisk]
	