parsing
parseVorbisBlock
	|vendorCommentLength numberOfComments commentLength comment comments|
	comments := OrderedCollection new.
	vendorCommentLength := self getLittleEndianInteger.
	self stream position: self stream position +vendorCommentLength.
	
	numberOfComments := self getLittleEndianInteger.
	
	numberOfComments timesRepeat: [
		comment := ''.
		commentLength := self getLittleEndianInteger.
		commentLength timesRepeat: [comment := comment, self stream next asCharacter.].
		comments add: comment
		].
	^ comments