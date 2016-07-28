parsing
parsePictureBlock
	| mime imageStream |
	imageStream := RWBinaryOrTextStream on: OrderedCollection new.
	self skipType.
	mime := self getUTF8StringSized: self getBigEndianInteger.
	self skipDiscription.
	self parsePictureBlockAs: mime with: self getPictureLength