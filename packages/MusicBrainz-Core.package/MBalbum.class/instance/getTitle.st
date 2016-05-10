as yet unclassified
getTitle

	| request |
	request := MBrequest new getDetailsForA: (self class entityName) withMBID: (self mbid).
	^ (request firstTagNamed: #title) contentString