as yet unclassified
testLoadSettingsFromDisk
	| loadedSettings |
	MBSTONHandler saveSettingsToDisk: MBData new settings.
	loadedSettings := MBSTONHandler loadSettingsFromDisk.
	self 
		assert: loadedSettings
		equals: MBData new settings