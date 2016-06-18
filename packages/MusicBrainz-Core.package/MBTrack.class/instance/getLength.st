accessing
getLength

	^ self metadata at: #Length ifAbsent:
		[nil]