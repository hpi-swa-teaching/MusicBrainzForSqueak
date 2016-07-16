settings
applySettings
	MBRequest 
		baseURL: (self settings at: 'Endpoint') asString;
		username: (self settings at: 'Username') asString;
		password: (self settings at: 'Password') asString