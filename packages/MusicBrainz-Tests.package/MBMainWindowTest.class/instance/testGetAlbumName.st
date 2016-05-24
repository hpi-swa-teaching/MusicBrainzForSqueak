TESTING: methods
testGetAlbumName
	self 
		assert: (self mainWindow getAlbumName: MBalbum new class = MBalbum);
		assert: (self mainWindow getAlbumName: MBtrack new class = MBtrack)