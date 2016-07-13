loadFromMB
loadMetadataFromMB
	self mbid = ''
		ifTrue: [(self askToFindMBID = '') ifTrue: [^ nil]].
	super loadMetadataFromMB.
	self getLength ifNil: [
		(self loadLength) ifNotNilDo: [:aString | self metadata at: #Length put: aString]].