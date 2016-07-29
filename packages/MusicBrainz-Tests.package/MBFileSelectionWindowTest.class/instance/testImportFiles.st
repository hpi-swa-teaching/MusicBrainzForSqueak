TESTING: UI elements
testImportFiles
	| file files |
	files := FileDirectory on: (Smalltalk imagePath), '/albums'.
	files entries do: [ :each | each extension = 'mp3' ifTrue: [file := each]].
	self fileSelectionWindow files: file asOrderedCollection.
	self fileSelectionWindow mainWindow: (MBMainWindow new).
	self fileSelectionWindow importFiles. 
	self 
		assert: self fileSelectionWindow mainWindow albums last tracklist first filepath
		equals: (Smalltalk imagePath), '/albums', FileDirectory slash, 'test.mp3'.
	