library
loadLibrary
	| albums progressBar |
	
	progressBar := ProgressMorph new openInWorld.
	progressBar label: 'Loading library'.
	progressBar done: 0.	
	albums := MBSTONHandler loadLibraryFromDisk.
	albums ifNotNil: 
		[self albums: albums].
	progressBar done: 1.
	progressBar delete