as yet unclassified
getLength

	^ self metadata at: #Length ifAbsent:
		[nil]