dictionary
contentDictionaryForPerfectTracks

	^ OrderedDictionary newFrom: 	{'Title' -> [:xml | self xmlParseFirstTagNamed: #title in: xml].
		'Artist' -> [:xml | self xmlParseFirstTagNamed: #name in: xml].
		'Album' -> [:xml | self xmlParseFirstTagNamed: #release containingFirst: #title in: xml]}