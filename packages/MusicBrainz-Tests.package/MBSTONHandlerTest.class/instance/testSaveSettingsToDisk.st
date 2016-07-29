TESTING: saving
testSaveSettingsToDisk
	MBSTONHandler saveSettingsToDisk: MBData new settings.
	self 
		assert: (MBSTONHandler path fileExists: 'settings.ston')
		equals: true