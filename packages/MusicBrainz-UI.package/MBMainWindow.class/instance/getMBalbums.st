as yet unclassified
getMBalbums
	| requestObject |
	requestObject := MBrequest new.
	^ requestObject getAlbumsNamed: 'If You Wait' FetchFirst: 10