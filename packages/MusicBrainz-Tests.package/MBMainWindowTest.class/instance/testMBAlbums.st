TESTING: methods
testMBAlbums
	| mbalbums |
	mbalbums := self mainWindow albums.
	self 
		assert: (mbalbums size = 10);
		assert: (mbalbums do: [ :album | 
			album class = MBAlbum 
				ifTrue: [^true] 
				ifFalse: [^false]])