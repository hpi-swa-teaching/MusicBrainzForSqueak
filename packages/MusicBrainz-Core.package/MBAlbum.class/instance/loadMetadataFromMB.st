loadFromMB
loadMetadataFromMB

	super loadMetadataFromMB.
	(self getLabels isEmpty)
		ifTrue: [self metadata at: #Label put: self loadLabels].
	self metadata at: #Year ifAbsent: [
		self metadata at: #Year put: self loadYear].
	(self getMedia isEmpty)
		ifTrue: [self metadata at: #Media put: self loadMedia]