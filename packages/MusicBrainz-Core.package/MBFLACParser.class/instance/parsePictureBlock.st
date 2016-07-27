parsing
parsePictureBlock
	| mime imageStream |
	imageStream := RWBinaryOrTextStream on: OrderedCollection new.
	self skipBytes: 4.
	mime := self getUTF8StringSized: self getBigEndianInteger.
	self skipBytes: self getBigEndianInteger + 16.
	imageStream nextPutAll: (self stream next: self getPictureLength).
	self setPictureFrom: imageStream As: mime