as yet unclassified
testGetCover

	self
		assert: self album getCover class
		equals: Form
		description: 'Found cover wasn''t returned as a Form!'