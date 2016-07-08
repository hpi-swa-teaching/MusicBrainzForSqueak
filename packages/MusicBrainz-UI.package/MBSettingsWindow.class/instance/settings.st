accessing
settings
	^ settings ifNil: [self settings: Dictionary new]