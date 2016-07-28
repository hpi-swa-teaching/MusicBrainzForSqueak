parsing
xmlParseCollectTagsNamed: aString containing: anotherString in: aXMLDocument

	| collection |
	collection := ''.
	aXMLDocument
		tagsNamed: aString
		do: [: each |
			collection := collection, (each firstTagNamed: anotherString) contentString, '/'].
	^ collection allButLast
