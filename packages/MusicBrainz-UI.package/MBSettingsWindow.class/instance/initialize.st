as yet unclassified
initialize
	self settings: (Dictionary newFrom: {
			'Endpoint' -> MBRequest baseURL.
			'Username' -> MBRequest username.
			'Password' -> MBRequest password.
			'Autoload' -> true.
		})