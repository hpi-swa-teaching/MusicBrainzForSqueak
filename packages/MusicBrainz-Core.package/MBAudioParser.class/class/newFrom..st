instance creation
newFrom: aFileObject 
	| parser |
	aFileObject extension = 'mp3'
		ifTrue: [parser := MBMP3Parser new].
	aFileObject extension = 'flac'
		ifTrue: [parser := MBFLACParser new].
	parser
		ifNotNil: [parser openStreamOn: aFileObject fullName].
	^ parser