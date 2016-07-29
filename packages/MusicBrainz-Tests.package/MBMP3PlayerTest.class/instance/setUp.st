accessing
setUp
	super setUp.
	self player: (MBMP3Player onFileNamed: (Smalltalk imagePath), '/albums/test.mp3')