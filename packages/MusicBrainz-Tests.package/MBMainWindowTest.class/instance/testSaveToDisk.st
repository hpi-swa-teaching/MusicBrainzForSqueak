TESTING: im&ex-porting
testSaveToDisk
	| albumsBeforeSave |
	albumsBeforeSave := self mainWindow albums.
	self mainWindow data saveLibrary.
	self mainWindow data loadLibrary.
	self 
		assert: self mainWindow albums first getTitle
		equals: albumsBeforeSave first getTitle
		description: 'Saving broken'