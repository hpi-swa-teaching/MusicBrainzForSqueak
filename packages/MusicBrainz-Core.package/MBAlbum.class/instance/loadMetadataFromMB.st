loadFromMB
loadMetadataFromMB

	super loadMetadataFromMB.
	(self getLabels isEmpty)
		ifTrue: [self metadata at: #Label put: self loadLabelsFromMB].
	self metadata at: #Year ifAbsent: [
		self metadata at: #Year put: self loadYearFromMB].
	(self getMedia isEmpty)
		ifTrue: [self metadata at: #Media put: self loadMediaFromMB]