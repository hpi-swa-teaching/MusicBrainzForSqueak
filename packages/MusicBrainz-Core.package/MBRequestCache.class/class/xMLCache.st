accessing
xMLCache
	XMLCache ifNil: [XMLCache := Dictionary new].
	^ XMLCache