as yet unclassified
testSaveSettingsToDisk
	MBSTONHandler saveSettingsToDisk: MBData new settings.
	self 
		assert: (MBSTONHandler path fileExists: 'settings.ston')
		equals: true