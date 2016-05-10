as yet unclassified
getMBIDforAlbumNamed: aString

	| xmlDocument mbid |
	 
	xmlDocument := self sendQuery: aString forEntity: 'release'.
	mbid := (xmlDocument firstTagNamed: #release) attributeAt: 'id'.
	^ mbid