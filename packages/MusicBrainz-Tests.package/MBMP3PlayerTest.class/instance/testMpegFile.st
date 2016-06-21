as yet unclassified
testMpegFile
	self 
		assert: self player mpegFile class = MPEGFile;
		assert: self player mpegFile fileName = ((Smalltalk imagePath), '/albums/test.mp3')
	