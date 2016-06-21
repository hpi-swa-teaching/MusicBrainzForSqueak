as yet unclassified
testGetAlbumsNamedFetchFirst
	| albums |
	albums := MBRequest getAlbumsNamed: 'Devils' FetchFirst: 5.
	self 
		assert: albums class = OrderedCollection;
		assert: albums size = 5
	