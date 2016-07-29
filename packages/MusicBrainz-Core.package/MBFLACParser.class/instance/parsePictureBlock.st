parsing
parsePictureBlock
	| mime |
	self skipType.
	mime := self getUTF8StringSized: self getBigEndianInteger.
	self skipDiscription.
	self parsePictureBlockAs: mime with: self getPictureLength