accessing
requestFromCache: anURL
	^ MBRequestCache xMLCache at: anURL ifAbsent: [nil]