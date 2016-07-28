parsingFrames
skipDiscriptionWith: anEncoding
		anEncoding = 0
		ifTrue: [self readUTF8]
		ifFalse: [self readUTF16]