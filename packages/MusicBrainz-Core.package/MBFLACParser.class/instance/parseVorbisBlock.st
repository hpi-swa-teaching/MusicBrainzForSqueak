parsing
parseVorbisBlock
	| commentLength |
	self skipVendorComments.
	self getNumberOfComments
		timesRepeat: [commentLength := self getLittleEndianInteger.
			self
				addCommentToTrack: (self getUTF8StringSized: commentLength)]