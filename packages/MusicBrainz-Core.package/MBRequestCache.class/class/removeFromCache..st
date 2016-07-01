accessing
removeFromCache: anURL
	MBRequestCache xMLCache remove: anURL ifAbsent: [nil]