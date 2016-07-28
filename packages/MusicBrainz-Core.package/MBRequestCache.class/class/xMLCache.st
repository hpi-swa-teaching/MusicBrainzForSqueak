accessing
xMLCache
	XMLCache ifNil: [self clearCache].
	^ XMLCache