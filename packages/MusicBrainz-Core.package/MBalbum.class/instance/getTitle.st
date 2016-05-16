as yet unclassified
getTitle

	(self title isNil)
		ifTrue: [
			| request |
			request := MBrequest new getDetailsForA: (self class entityName) withMBID: (self mbid).
			self title: (request firstTagNamed: #title) contentString].
	^ self title