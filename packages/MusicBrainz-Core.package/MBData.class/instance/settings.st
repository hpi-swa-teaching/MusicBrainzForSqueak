accessing
settings
	^ settings ifNil: [self getCurrentSettings]