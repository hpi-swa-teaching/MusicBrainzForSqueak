parsing
getLabelOf: aKey 
	^ self class textFrames
		at: (Unicode toUppercase: aKey)
		ifAbsent: [^aKey]