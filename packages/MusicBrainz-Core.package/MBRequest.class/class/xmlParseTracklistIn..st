parsing
xmlParseTracklistIn: aXMLDocument

	|tracks|
	tracks := OrderedCollection new.
	aXMLDocument
		tagsNamed: #recording
		do: [:each |
			tracks add: (MBTrack new setMBID: (each attributeAt: #id))].
	^ tracks