as yet unclassified
testClearCache

	| cacheBackup |
	
	cacheBackup := MBRequestCache xMLCache.
	MBRequestCache clearCache.
	self
		assert: MBRequestCache countURLsinCache
		equals: 0
		description: 'clearCache should have removed every entry'.
	MBRequestCache xMLCache: cacheBackup
		