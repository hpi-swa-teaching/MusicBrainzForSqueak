as yet unclassified
setUp
	super setUp.
	self player: (MBMP3Player onFileNamed: (Smalltalk imagePath), '/albums/test.mp3')