as yet unclassified
testGetAlbumName
	self assert: ((self mainWindow getAlbumName: (MBMockData mockAlbum )) =  'Epsilon - Kygo')