as yet unclassified
readImageUntil: aPosition with: aString

	| imagestream |
	imagestream := RWBinaryOrTextStream on: OrderedCollection new.

		[imagestream nextPut: self stream next] doWhileTrue: [self stream position < aPosition].
		aString = 'image/jpeg'
					ifTrue: [self track
							cover: (JPEGReadWriter2 formFromStream: imagestream)]
					ifFalse: [self track
							cover: (PNGReadWriter formFromStream: imagestream)]