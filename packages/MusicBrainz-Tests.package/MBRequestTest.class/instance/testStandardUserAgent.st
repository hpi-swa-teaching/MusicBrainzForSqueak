TESTING: settings
testStandardUserAgent

	self
		assert: MBRequest standardUserAgent
		equals: 'SqueakMB/0.1 (https://github.com/HPI-SWA-Teaching/SWT16-Project-12)'
		description: 'Someone changed the user agent used'
	