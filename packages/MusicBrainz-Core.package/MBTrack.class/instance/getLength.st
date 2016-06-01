as yet unclassified
getLength

	^ self tags at: #length ifAbsent:
		[
			| request |
			request := MBRequest getDetailsForA: (self class entityName) withMBID: (self mbid).
			^ self tags at: #length put: (request firstTagNamed: #length) contentString].