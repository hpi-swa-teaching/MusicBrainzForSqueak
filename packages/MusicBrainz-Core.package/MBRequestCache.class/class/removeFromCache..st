caching
removeFromCache: anURL
	self xMLCache removeKey: anURL ifAbsent: [nil]