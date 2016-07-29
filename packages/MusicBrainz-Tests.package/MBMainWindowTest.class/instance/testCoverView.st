TESTING: accessing
testCoverView
	self mainWindow coverView: 'CoverView'.
	self 
		assert: self mainWindow coverView 
		equals: 'CoverView'
		description: 'Accessor broken'