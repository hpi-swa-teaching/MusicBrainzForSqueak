as yet unclassified
testCoverBaseURL

	self
		assert: MBRequest coverBaseURL 
		equals: 'http://coverartarchive.org/'
		description: 'Someone changed the URL for the cover archive'
	