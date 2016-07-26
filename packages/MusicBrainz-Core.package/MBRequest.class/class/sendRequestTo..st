request
sendRequestTo: aString

	| reply resp xmldoc |
	
	(MBRequestCache isInCache: aString)
		ifTrue: [Transcript show: 'Satisfied from Cache', Character cr. ^ MBRequestCache requestFromCache: aString].
	resp := WebClient httpGet: aString.
	Transcript show: 'Requesting: ', aString, Character cr.
	resp isSuccess ifFalse: [self inform: ('Seems like you are exceeding the MusicBrainz rate limiting.', Character cr, 'Grab a cup of coffee and retry later.'). ^ nil]. "resp status"
	reply := UTF8TextConverter new decodeString: resp content.
	xmldoc := XMLDOMParser parseDocumentFrom: reply readStream.
	xmldoc ifNotNil: [MBRequestCache addToCache: aString containing: xmldoc].
	^ xmldoc