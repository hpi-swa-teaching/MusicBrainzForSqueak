loadFromMB
loadMetadataFromMB
	self mbid = ''
		ifTrue: [(self askToFindMBID = '') ifTrue: [^ nil]].
	super loadMetadataFromMB.
	self getLength ifNil: [self metadata at: #Length put: self loadLength]