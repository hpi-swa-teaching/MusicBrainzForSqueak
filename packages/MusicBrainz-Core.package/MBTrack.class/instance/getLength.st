as yet unclassified
getLength

	^ self metadata at: #Length ifAbsent:
		[
			| request |
			request := MBRequest getDetailsForA: (self class entityName) withMBID: (self mbid).
			^ self tags at: #length put: (request firstTagNamed: #length) contentString].