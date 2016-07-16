library
saveLibrary
	| progressBar |
	progressBar := ProgressMorph new openInWorld label: 'Saving library'.
	MBSTONHandler saveLibraryToDisk: self albums.
	progressBar 
		done: 1;
		delete