parsing
xmlParseFirstTagNamed: aString containingFirst: anotherString in: aXMLDocument
	^ ((aXMLDocument firstTagNamed: aString) firstTagNamed: anotherString) contentString