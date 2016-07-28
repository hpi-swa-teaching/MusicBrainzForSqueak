parsing
xmlParseYearIn: aXMLDocument

	^ (aXMLDocument firstTagNamed: #date) contentString first: 4