cover
convertAndParseToXML: aString

	| convertedString |
	convertedString := UTF8TextConverter new decodeString: aString content.
	^ XMLDOMParser parseDocumentFrom: convertedString readStream