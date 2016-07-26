loadFromMB
loadMetadataFromMB
	(self mbid = '' or: self mbid isNil)
		ifTrue: [(self askToFindMBID = '') ifTrue: [^ nil]].
	super loadMetadataFromMB.
	#('Label' 'Year' 'Media') do: [:each |
		self metadata at: each ifAbsent: [
			self loadAndSetFromMB: each]]