accessing
albums
	albums 
		ifNil: [self albums: OrderedCollection new].
	^ albums