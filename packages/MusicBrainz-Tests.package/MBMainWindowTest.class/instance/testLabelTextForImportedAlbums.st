TESTING: accessing
testLabelTextForImportedAlbums
	self 
		assert: self mainWindow labelTextForImportedAlbums
		equals: 'Imported Albums'
		description: 'wrong label text: '