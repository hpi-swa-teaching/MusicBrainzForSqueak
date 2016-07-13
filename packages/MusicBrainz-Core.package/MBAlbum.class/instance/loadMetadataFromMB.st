loadFromMB
loadMetadataFromMB
	(self mbid = '')
		ifTrue: [(self askToFindMBID = '') ifTrue: [^ nil]].
	super loadMetadataFromMB.
	(self getLabels isEmpty)
		ifTrue: [
			(self loadLabelsFromMB) ifNotNilDo: [:aString | self metadata at: #Label put: aString]].
	self metadata at: #Year ifAbsent: [
			(self loadYearFromMB) ifNotNilDo: [:aString | self metadata at: #Year put: aString]].
	(self getMedia isEmpty)
		ifTrue: [
			(self loadMediaFromMB) ifNotNilDo: [:aString | self metadata at: #Media put: aString]]