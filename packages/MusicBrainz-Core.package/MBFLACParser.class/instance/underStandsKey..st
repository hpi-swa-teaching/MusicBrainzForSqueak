parsing
understandsKey: aKey
	self class textFrames at: (Unicode toUppercase: aKey )
		ifAbsent: [^ false].
	^ true
	