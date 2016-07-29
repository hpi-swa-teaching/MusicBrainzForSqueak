TESTING: setting
testSetUsername

	| username |
	username := 'User'.
	self settingsWindow setUsername: username.
	self 
		assert: username 
		equals: (self settingsWindow settings at: 'Username')