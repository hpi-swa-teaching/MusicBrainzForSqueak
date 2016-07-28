parsing
xmlParseFirstTagNamed: aString in: aXMLDocument

	^ (aXMLDocument firstTagNamed: aString) contentString