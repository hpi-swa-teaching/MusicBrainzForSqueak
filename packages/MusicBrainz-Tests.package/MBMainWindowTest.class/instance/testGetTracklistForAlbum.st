as yet unclassified
testGetTracklistForAlbum
	self 
		assert: (self mainWindow getTracklistForAlbum: MBMockData mockAlbum) class = OrderedCollection;
		assert: (((self mainWindow getTracklistForAlbum: MBMockData mockAlbum) first) metadata at: #Title)
			equals: 'Epsilon - Original Remix'
			