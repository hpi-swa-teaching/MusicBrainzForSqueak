as yet unclassified
testDefaultCoverSized

	self
		assert: (MBRequest defaultCoverSized: #small class) class
		equals:  Form
		description: 'DefaultCoverSized should return a PNGReadWriter'.
	self
		assert: (MBRequest defaultCoverSized: #big class) class
		equals: Form
		description: 'DefaultCoverSized should return a PNGReadWriter'