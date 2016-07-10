accessing
saveLibrary
	| progressBar |
	
	progressBar := ProgressMorph new openInWorld.
	progressBar label: 'Saving library'.
	progressBar done: 0.9.
	
	MBSTONHandler saveSTONOf: self albums.
	progressBar done: 1.
	progressBar delete