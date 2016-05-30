albumTreeView
getMBalbums
	| requestObject |
	requestObject := MBRequest new.
	"^ requestObject getAlbumsNamed: 'Devils' FetchFirst: 10"
	^ requestObject getAlbumsNamed: 'Open Season' FetchFirst: 10

