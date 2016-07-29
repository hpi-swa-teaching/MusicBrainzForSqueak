TESTING: settings
testIsAutoloadEnabled

	self
		assert: self data isAutoloadEnabled class superclass
		equals: Boolean
		description: 'Autoload should be a bool'
		