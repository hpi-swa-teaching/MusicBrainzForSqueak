parsing
parsePictureBlock
	| type MIMELength MIME descriptionLength pictureLength imageStream|
	imageStream := RWBinaryOrTextStream on: OrderedCollection new.
	
	type := self getBigEndianInteger.
	MIMELength := self getBigEndianInteger.
	MIME := self getUTF8String: MIMELength.
	descriptionLength := self getBigEndianInteger.
	self stream position: self stream position + descriptionLength.
	4 timesRepeat: [self getBigEndianInteger].
	pictureLength := self getBigEndianInteger.

	pictureLength timesRepeat: [imageStream nextPut: self stream next].
	
	(MIME = 'image/jpeg')
				ifTrue: [self track cover: (JPEGReadWriter2 formFromStream: (imageStream))].
	(MIME = 'image/png')
				ifTrue: [self track cover: (PNGReadWriter formFromStream: (imageStream))].
				
			"oberen teil auslagern?"