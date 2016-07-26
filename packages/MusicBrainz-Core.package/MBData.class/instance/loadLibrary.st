library
loadLibrary
	| progressBar |
	progressBar := ProgressMorph new openInWorld label: 'Loading library'.
	MBSTONHandler loadLibraryFromDisk ifNotNilDo: [:savedAlbums | self albums: savedAlbums].
	progressBar 
		done: 1;
		delete