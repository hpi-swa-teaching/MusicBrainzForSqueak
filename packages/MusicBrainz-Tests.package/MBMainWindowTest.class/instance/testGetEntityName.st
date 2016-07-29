TESTING: albumTreeView
testGetEntityName
	self 
		assert: 'Epsilon - Kygo' 
		equals: (self mainWindow getEntityName: MBMockData mockAlbum)