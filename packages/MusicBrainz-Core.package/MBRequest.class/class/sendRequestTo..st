request
sendRequestTo: aString

	| response xmlDocument |
	(MBRequestCache isInCache: aString)
		ifTrue: [	^ MBRequestCache requestFromCache: aString].
	response := WebClient httpGet: aString. response isSuccess ifFalse: [self inform: ('Seems like you are exceeding the MusicBrainz rate limiting.', Character cr, 'Grab a cup of coffee and retry later.'). ^ nil].
	xmlDocument := self convertAndParseToXML: response. 
	xmlDocument ifNotNil: [MBRequestCache addToCache: aString containing: xmlDocument].
	^ xmlDocument