accessing
getTitle

	^ self metadata at: #Title ifAbsent:
		[ ^ '']