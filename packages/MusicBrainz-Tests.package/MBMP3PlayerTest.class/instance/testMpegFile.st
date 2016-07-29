testing
testMpegFile
	self 
		assert: MPEGFile equals: self player mpegFile class;
		assert: (Smalltalk imagePath , '/albums/test.mp3') equals: self player mpegFile fileName