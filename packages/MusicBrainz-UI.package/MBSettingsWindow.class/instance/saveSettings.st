as yet unclassified
saveSettings
	((self settings at: 'Endpoint') isEmpty not)
		ifTrue: [MBRequest baseURL: ((self settings at: 'Endpoint') asString)].
	((self settings at: 'Username') isEmpty not)
		ifTrue: [MBRequest username: ((self settings at: 'Username') asString)].
	((self settings at: 'Endpoint') isEmpty not)
		ifTrue: [MBRequest password: ((self settings at: 'Password') asString)].
	((self settings at: 'Autoload') isEmpty not)
		ifTrue: [self inform: ('Autoload to', self settings at: 'Autoload')]