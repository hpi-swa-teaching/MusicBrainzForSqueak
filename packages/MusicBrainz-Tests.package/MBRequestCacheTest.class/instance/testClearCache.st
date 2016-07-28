as yet unclassified
testClearCache

	| cacheBackup |
	
	cacheBackup := MBRequestCache xMLCache.
	MBRequestCache clearCache.
	self
		assert: MBRequestCache countURLsinCache
		equals: (MBSTONHandler loadFromFile: 'testsRequestCache.ston') size
		description: 'clearCache should have removed every entry and added all the test cases'.
	MBRequestCache xMLCache: cacheBackup
		