as yet unclassified
testGetMedia

	self
		assert: self album getMedia asOrderedCollection 
		equals: #('Testmedium1' 'Testmedium2') asOrderedCollection
		description: 'Returned media do not match!'