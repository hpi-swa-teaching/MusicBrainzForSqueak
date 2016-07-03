accessing
removeFromCache: anURL
	MBRequestCache xMLCache removeKey: anURL ifAbsent: [nil]