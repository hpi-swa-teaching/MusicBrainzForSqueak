as yet unclassified
sendQuery: aString forEntity: anotherString

	| reply resp xmldoc requestURL |
	
	requestURL := MBrequest baseURL, anotherString, '/?query=', aString.
	resp := WebClient httpGet: requestURL.
"	Transcript show: 'Requesting: ', requestURL."
	resp isSuccess ifFalse:[^self error: resp status].
	reply := resp content.
	xmldoc := XMLDOMParser parseDocumentFrom: reply readStream.
	^ xmldoc