TESTING: methods
testGetAlbumName
	self 
		assert: (self mainWindow getAlbumName: MBAlbum new class = MBAlbum);
		assert: (self mainWindow getAlbumName: MBTrack new class = MBTrack)