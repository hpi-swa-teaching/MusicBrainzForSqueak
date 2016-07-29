parsing
parsePictureBlockAs: aMIME with: aLength 
	aMIME = 'image/jpeg'
		ifTrue: [self track
				cover: (JPEGReadWriter2
						formFromStream: (ReadStream
								on: (self stream next: aLength)))].
	aMIME = 'image/png'
		ifTrue: [self track
				cover: (PNGReadWriter
						formFromStream: (ReadStream
								on: (self stream next: aLength)))]