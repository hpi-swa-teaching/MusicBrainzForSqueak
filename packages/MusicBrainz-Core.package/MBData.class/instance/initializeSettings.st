settings
initializeSettings
	MBSTONHandler loadSettingsFromDisk
		ifNotNilDo: [:savedSettings |
			self settings: savedSettings.
			self applySettings]
		ifNil: [
			self settings: (Dictionary newFrom: {
					'Endpoint' -> MBRequest baseURL.
					'Username' -> MBRequest username.
					'Password' -> MBRequest password.
					'Autoload' -> true.
			})].