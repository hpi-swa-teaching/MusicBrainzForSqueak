accessing
loadLibrary
	| albums progressBar |
	
	progressBar := ProgressMorph new openInWorld.
	progressBar label: 'Loading library'.
	progressBar done: 0.99.	
	albums := MBSTONHandler loadFromLocalSTON.
	albums ifNotNil: 
		[self albums: albums].
	progressBar done: 1.
	progressBar delete