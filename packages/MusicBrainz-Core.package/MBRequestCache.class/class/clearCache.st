caching
clearCache
	self xMLCache: Dictionary new.
	MBRequestCache xMLCache: (MBSTONHandler loadFromFile: 'testsRequestCache.ston')