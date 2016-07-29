TESTING: accessing
testCountURLsinCache

	| startCount testURL|
	testURL := 'http://example.org'.
	self
		assert: MBRequestCache countURLsinCache class
		equals: SmallInteger 
		description: 'Number of URLs in Cache should be an integer'.
	startCount := MBRequestCache countURLsinCache.
	MBRequestCache addToCache: testURL containing: 'testString'.
	self
		assert: MBRequestCache countURLsinCache 
		equals: startCount + 1
		description: 'countURLsinCache should have increased by one.'.
	MBRequestCache removeFromCache: testURL.
	self
		assert: MBRequestCache countURLsinCache 
		equals: startCount
		description: 'countURLsinCache should have decreased after deletion.'
		