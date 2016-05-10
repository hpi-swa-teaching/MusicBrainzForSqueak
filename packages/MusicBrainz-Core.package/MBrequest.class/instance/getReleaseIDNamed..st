as yet unclassified
getReleaseIDNamed: aString

	| request mbid |
	
	request := self sendQuery: aString forEntity: 'release'.
	mbid := (request firstTagNamed: #release) attributeAt: 'id'.
	^ mbid