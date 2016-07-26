initialize
initialize
	self initializeSettings.
	self isAutoloadEnabled
		ifTrue: [self loadLibrary]