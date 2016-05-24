as yet unclassified
testTitle

	| title  |
	
	title := self album getTitle.
	self
		assert: 'If You Wait'
		equals: title
		description: 'The title of album does not match'