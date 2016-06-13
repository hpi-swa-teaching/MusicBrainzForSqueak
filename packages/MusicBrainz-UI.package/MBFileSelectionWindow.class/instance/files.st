accessing
files
	^ files
		ifNil: [^ OrderedCollection new]