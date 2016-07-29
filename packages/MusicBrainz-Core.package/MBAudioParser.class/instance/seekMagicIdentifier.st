parsing
seekMagicIdentifier
	self stream position: (self stream
				positionOfSubCollection: (self class magicIdentifier)
				ifAbsent: [^ false])
				+ (self class magicIdentifier size - 1).
	^ true