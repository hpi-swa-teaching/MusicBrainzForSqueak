loadFromMB
loadMetadataFromMB

	super loadMetadataFromMB.
	self getLength ifNil: [self metadata at: #Length put: self loadLength]