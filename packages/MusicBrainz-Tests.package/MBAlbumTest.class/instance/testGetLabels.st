as yet unclassified
testGetLabels

	self
		assert: self album getLabels asOrderedCollection 
		equals: #('Testlabel1' 'Testlabel2') asOrderedCollection
		description: 'Returned labels do not match!'