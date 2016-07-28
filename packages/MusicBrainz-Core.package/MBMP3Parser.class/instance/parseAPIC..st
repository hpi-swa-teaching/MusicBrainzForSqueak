parsingFrames
parseAPIC: aFrameSize 
	| smime start encoding |
	start := self stream position.
	encoding := self stream next.
	smime := self readSMIME.
	self skipType.
	self skipDiscriptionWith: encoding.
	self parsePictureBlockAs: smime with: start + aFrameSize - self stream position