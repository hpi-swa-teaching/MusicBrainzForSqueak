loadFromMB
loadAndSetFromMB: aString
	(self loadFromMB: aString)
		ifNotNilDo: [:MBmetadata | self metadata at: aString put: MBmetadata]