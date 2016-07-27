parsing
parsePictureBlock
	| MIME imageStream |
	imageStream := RWBinaryOrTextStream on: OrderedCollection new.
	self skipType.
	MIME := self getUTF8StringSized: self getBigEndianInteger.
	self skipBytes: self getBigEndianInteger + 16.
	self getPictureLength
		timesRepeat: [imageStream nextPut: self stream next].
	"imageStream nextPutAll: (self stream next: (self getPictureLength))."
	MIME = 'image/jpeg'
		ifTrue: [self track
				cover: (JPEGReadWriter2 formFromStream: imageStream)].
	MIME = 'image/png'
		ifTrue: [self track
				cover: (PNGReadWriter formFromStream: imageStream)]