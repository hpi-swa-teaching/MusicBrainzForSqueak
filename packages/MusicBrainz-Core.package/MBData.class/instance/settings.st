accessing
settings
	^ settings ifNil: [^ self class defaultSettings]