as yet unclassified
sendRequestTo: aString

	| reply resp xmldoc |
	
	resp := WebClient httpGet: aString.
	resp isSuccess ifFalse:[^self error: resp status].
	reply := UTF8TextConverter new decodeString: resp content.
	xmldoc := XMLDOMParser parseDocumentFrom: reply readStream.
	^ xmldoc