library
loadLibrary
	| albums progressBar |
	progressBar := ProgressMorph new openInWorld label: 'Loading library'.
	albums := MBSTONHandler loadLibraryFromDisk.
	albums ifNotNil: 
		[self albums: albums].
	progressBar 
		done: 1;
		delete