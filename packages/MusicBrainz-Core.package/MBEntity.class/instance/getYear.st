accessing
getYear
	^ self metadata at: #Year ifAbsent:
		[ ^ '']