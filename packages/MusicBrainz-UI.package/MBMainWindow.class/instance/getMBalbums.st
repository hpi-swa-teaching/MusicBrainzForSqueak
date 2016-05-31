albumTreeView
getMBalbums
	| requestObject |
	requestObject := MBRequest new.
	^ requestObject getAlbumsNamed: 'Devils' FetchFirst: 10

