loadFromMB
loadMetadataFromMB

	(self mbid = '')
		ifTrue: [^ self inform: 'No MBID set.'].
	super loadMetadataFromMB.
	self getLength ifNil: [self metadata at: #Length put: self loadLength]