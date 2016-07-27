as yet unclassified
processBlockOfType: aType of: aLength 
	(aType ~= 4 and: aType ~= 6)
		ifTrue: [self skipBytes: aLength]
		ifFalse: [aType = 4
				ifTrue: [self parseVorbisBlock]
				ifFalse: [self parsePictureBlock]]