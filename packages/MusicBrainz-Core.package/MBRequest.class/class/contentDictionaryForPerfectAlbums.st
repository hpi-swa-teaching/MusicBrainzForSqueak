dictionary
contentDictionaryForPerfectAlbums
	^ OrderedDictionary newFrom: {'Title' -> [:xml | self xmlParseFirstTagNamed: #title in: xml].
		'Artist' -> [:xml | self xmlParseFirstTagNamed: #name in: xml].
		'Tracks' -> [:xml | self xmlParseFirstTagNamed: #'track-count' in: xml].
		'Label' -> [:xml | self xmlParseCollectTagsNamed: #label containing: #name in: xml].
		'Country' -> [:xml | self xmlParseFirstTagNamed: #country in: xml].
		'Medium' -> [:xml | self xmlParseFirstTagNamed: #format in: xml]}