as yet unclassified
sendQuery: aString forEntity: anotherString

	| reply resp xmldoc requestURL |
	
	requestURL := MBRequest baseURL, anotherString, '/?query=', (aString encodeForHTTP).
	resp := WebClient httpGet: requestURL.
	resp isSuccess ifFalse:[^self error: resp status].
	reply := resp content.
	xmldoc := XMLDOMParser parseDocumentFrom: reply readStream.
	^ xmldoc