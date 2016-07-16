request
sendRequestTo: aString

	| reply resp xmldoc |
	
	(MBRequestCache isInCache: aString)
		ifTrue: [Transcript show: 'Satisfied from Cache', Character cr. ^ MBRequestCache requestFromCache: aString].
	resp := WebClient httpGet: aString.
	Transcript show: 'Requesting: ', aString, Character cr.
	resp isSuccess ifFalse:["^self error: resp status" ^ nil].
	reply := UTF8TextConverter new decodeString: resp content.
	xmldoc := XMLDOMParser parseDocumentFrom: reply readStream.
	xmldoc ifNotNil: [MBRequestCache addToCache: aString containing: xmldoc].
	^ xmldoc