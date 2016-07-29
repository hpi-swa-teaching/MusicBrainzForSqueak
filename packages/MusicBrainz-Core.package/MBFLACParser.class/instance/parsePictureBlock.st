parsing
parsePictureBlock
	| mime |
	self skipType.
	mime := self getUTF8StringSized: self getBlockLength.
	self skipDiscription.
	self parsePictureBlockAs: mime with: self getBlockLength