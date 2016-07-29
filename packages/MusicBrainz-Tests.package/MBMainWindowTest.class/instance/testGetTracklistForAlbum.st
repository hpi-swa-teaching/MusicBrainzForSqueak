TESTING: building
testGetTracklistForAlbum
	self 
		assert: OrderedCollection equals: (self mainWindow getTracklistForAlbum: MBMockData mockAlbum) class;
		assert:  'Epsilon - Original Remix' equals: (((self mainWindow getTracklistForAlbum: MBMockData mockAlbum) first) metadata at: #Title)
			