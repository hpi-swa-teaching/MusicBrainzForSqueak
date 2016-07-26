loadFromMB
loadAndSetFromMB: aString
	(self loadFromMB: aString)
		ifNotNilDo: [:mbMetadata | self metadata at: aString put: mbMetadata]