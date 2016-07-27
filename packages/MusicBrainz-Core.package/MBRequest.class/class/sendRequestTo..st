request
sendRequestTo: aString

	| reply resp xmldoc |
	(MBRequestCache isInCache: aString)
		ifTrue: [^ MBRequestCache requestFromCache: aString].
	resp := WebClient httpGet: aString.
	resp isSuccess ifFalse: [self inform: ('Seems like you are exceeding the MusicBrainz rate limiting.', Character cr, 'Grab a cup of coffee and retry later.'). ^ nil].
	reply := UTF8TextConverter new decodeString: resp content.
	xmldoc := XMLDOMParser parseDocumentFrom: reply readStream.
	xmldoc ifNotNil: [MBRequestCache addToCache: aString containing: xmldoc].
	^ xmldoc