albumTreeView
getMBalbums
	| requestObject |
	requestObject := MBRequest new.
	"^ requestObject getAlbumsNamed: 'Devils' FetchFirst: 10"
	^ requestObject getAlbumsNamed: 'If You Wait' FetchFirst: 10

