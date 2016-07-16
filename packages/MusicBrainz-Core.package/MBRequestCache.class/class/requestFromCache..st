caching
requestFromCache: anURL
	^ self xMLCache at: anURL ifAbsent: [nil]