parsing
setPictureFrom: aStream As: aMIME 
	aMIME = 'image/jpeg'
		ifTrue: [self track
				cover: (JPEGReadWriter2 formFromStream: aStream)].
	aMIME = 'image/png'
		ifTrue: [self track
				cover: (PNGReadWriter formFromStream: aStream)]