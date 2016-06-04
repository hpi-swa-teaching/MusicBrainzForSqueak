as yet unclassified
testLoadMediaFromMB

	self
		assert: self album loadMediaFromMB 
		equals: '12" Vinyl/12" Vinyl/CD'
		description: 'Returned media from MB do not match!'