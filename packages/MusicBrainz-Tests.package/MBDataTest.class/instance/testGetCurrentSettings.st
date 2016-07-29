TESTING: settings
testGetCurrentSettings

	self
		assert: self data getCurrentSettings class
		equals: Dictionary
		description: 'Settings should be a dictionary.'.
	self
		assert: (self data getCurrentSettings includesKey: 'Endpoint')
		description: 'Settings should contain an endpoint'.
	self
		assert: (self data getCurrentSettings includesKey: 'Username')
		description: 'Settings should contain a MB Username'.
	self
		assert: (self data getCurrentSettings includesKey: 'Password')
		description: 'Settings should contain a MB Password'.
	self
		assert: (self data getCurrentSettings includesKey: 'Autoload')
		description: 'Settings should contain autoload setting'