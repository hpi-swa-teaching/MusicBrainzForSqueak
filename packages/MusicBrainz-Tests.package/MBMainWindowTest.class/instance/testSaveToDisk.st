as yet unclassified
testSaveToDisk
	| albumsBeforeSave |
	albumsBeforeSave := self mainWindow albums.
	self mainWindow saveToDisk.
	self mainWindow loadFromDisk.
	self 
		assert: self mainWindow albums first getTitle
		equals: albumsBeforeSave first getTitle
		description: 'Saving broken'