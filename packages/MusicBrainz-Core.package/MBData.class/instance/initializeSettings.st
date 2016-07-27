settings
initializeSettings
	MBSTONHandler loadSettingsFromDisk
		ifNotNilDo: [ :savedSettings |
			self settings: savedSettings.
			self applySettings]
		ifNil: [
			self settings: self getCurrentSettings].