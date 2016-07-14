loadFromMB
loadMetadataFromMB
	(self mbid = '' or: self mbid isNil)
		ifTrue: [(self askToFindMBID = '') ifTrue: [^ nil]].
	super loadMetadataFromMB.
	self getLength ifNil: [
		(self loadLength) ifNotNilDo: [:aString | self metadata at: #Length put: aString]].