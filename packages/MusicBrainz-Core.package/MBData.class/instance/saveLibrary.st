library
saveLibrary
	| progressBar |

	progressBar := ProgressMorph new openInWorld.
	progressBar label: 'Saving library'.
	progressBar done: 0.
	
	MBSTONHandler saveLibraryToDisk: self albums.
	progressBar done: 1.
	progressBar delete