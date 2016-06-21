as yet unclassified
testCover
	self entity cover: (MBMockData mockAlbum).
	self assert: self entity cover metadata equals: (MBMockData mockAlbum metadata)