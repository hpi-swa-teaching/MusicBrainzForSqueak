as yet unclassified
browseFor: aString by: anotherString withMBID: andAnotherString

	| reply resp xmldoc requestURL |
	
	requestURL := MBrequest baseURL, aString, '?', anotherString, '=', andAnotherString.
	resp := WebClient httpGet: requestURL.
	resp isSuccess ifFalse:[^self error: resp status].
	reply := resp content.
	xmldoc := XMLDOMParser parseDocumentFrom: reply readStream.
	^ xmldoc