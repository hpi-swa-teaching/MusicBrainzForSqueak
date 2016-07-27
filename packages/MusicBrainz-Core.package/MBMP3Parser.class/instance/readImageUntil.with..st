parsingFrames
readImageUntil: aPosition with: aString 
	| imageStream |
	imageStream := RWBinaryOrTextStream on: OrderedCollection new.
	[imageStream nextPut: self stream next]
		doWhileTrue: [self stream position < aPosition].
	aString = 'image/jpeg'
		ifTrue: [self track
				cover: (JPEGReadWriter2 formFromStream: imageStream)]
		ifFalse: [self track
				cover: (PNGReadWriter formFromStream: imageStream)]