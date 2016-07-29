parsing
parseVorbisBlock
	self skipVendorComments.
	self getNumberOfComments
		timesRepeat: [
					    self addCommentToTrack: (self getUTF8StringSized: self getLittleEndianIntegerLength)]