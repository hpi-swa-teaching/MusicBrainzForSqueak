albumTreeView
getMBalbums
	| requestObject |
	requestObject := MBRequest new.
	"^ requestObject getAlbumsNamed: 'Devils' FetchFirst: 10"
	^ requestObject getAlbumsNamed: 'The Nocturnes' FetchFirst: 10

