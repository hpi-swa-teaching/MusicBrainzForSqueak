as yet unclassified
testAccessingCache

	| testURL testObject |
	testURL := 'http://example.org'.
	testObject := 'This is a test string'.
	MBRequestCache addToCache: testURL containing: testObject.
	self
		assert: (MBRequestCache xMLCache includesKey: testURL)
		description: 'AddToCache should have added the url'.
	self
		assert: (MBRequestCache isInCache: testURL)
		description: 'isInCache should say that it contains this testUrl.'.
	self
		assert: (MBRequestCache getURLsinCache includes: testURL)
		description: 'TestURL should be in list of cached URLs.'.
	self
		assert: (MBRequestCache requestFromCache: testURL)
		equals: testObject
		description: 'Wrong object was returned from cache.'.
	MBRequestCache removeFromCache: testURL.
	self
		assert: (MBRequestCache xMLCache includesKey: testURL) not
		description: 'removeFromCache has not removed testURL from cache.'.
	self
		assert: (MBRequestCache isInCache: testURL)
		equals: false
		description: 'testURL shouldn''t have been in cache after removing it.'
		