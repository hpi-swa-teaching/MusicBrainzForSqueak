parsing
underStandsKey: aKey
	self class textFrames at: aKey 
		ifAbsent: [^ false].
	^ true
	