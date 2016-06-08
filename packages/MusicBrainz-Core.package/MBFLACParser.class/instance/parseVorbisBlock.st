parsing
parseVorbisBlock
	|vendorCommentLength numberOfComments commentLength comment|
	vendorCommentLength := self getLittleEndianInteger.
	self stream position: self stream position +vendorCommentLength.
	
	numberOfComments := self getLittleEndianInteger.
	
	numberOfComments timesRepeat: [
		comment := ''.
		commentLength := self getLittleEndianInteger.
		comment := self getUTF8String: commentLength.
		self addCommentToTrack: comment.
		].
	
"schleifenkörper auslagern?"