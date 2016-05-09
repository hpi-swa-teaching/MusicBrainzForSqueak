as yet unclassified
browseFor: aString by: anotherString withMbid: andanotherString

	| reply resp xmldoc requestURL |
	
	requestURL := MBrequest baseURL, aString, '?', anotherString, '=', andanotherString.
	"Transcript show: 'Requesting: ', requestURL."
	resp := WebClient httpGet: requestURL.
	resp isSuccess ifFalse:[^self error: resp status].
	reply := resp content.
	xmldoc := XMLDOMParser parseDocumentFrom: reply readStream.
	^ xmldoc