as yet unclassified
testLoadFrontcoverFromMB

	self
		assert: self album getCover class
		equals: Form
		description: 'Found cover wasn''t returned as a Form!'