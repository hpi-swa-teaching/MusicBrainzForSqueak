as yet unclassified
getMBalbums
	| requestObject |
	requestObject := MBrequest new.
	^ requestObject getAlbumsNamed: 'Devils' FetchFirst: 10