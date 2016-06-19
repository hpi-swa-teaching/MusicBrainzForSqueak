writing
writeMetaData: aDictionary
	| flags unchangedFrames newFrames newFile progressBar streamsize|
	newFile := FileStream fileNamed: 'Temp.mp3'.
	newFile binary.
	self seekID3.
	self validVersion
		ifFalse: [self error: 'Invalid ID3 Version'].
	flags := self stream next.  "Was passiert mit diesen Inschtrumenten?"
	self setID3Size.
	unchangedFrames := self copyUnchangedFrames: aDictionary.
	newFrames := OrderedCollection new.
	aDictionary keysAndValuesDo: [:aTag :aContent | newFrames addAll: (self createTextFrame: (MBMP3Parser textFrames keyAtValue: aTag) With: aContent)].
	
	newFile
		nextPutAll: 'ID3';
		nextPutAll: #[3 0 0].
	(self createID3SizeBytes: (newFrames size + unchangedFrames size + 10)) do: [:each | newFile nextPut: each].
	unchangedFrames do: [:each | newFile nextPut: each].
	newFrames do: [:each | newFile nextPut: each].
	self stream position: self id3size.
	progressBar := ProgressMorph new openInWorld.
	progressBar label: 'Processing: File'.
	streamsize := self stream contents size.
	[(self stream peek)
		ifNil:[
			newFile close.
			self stream close.
			progressBar delete.
			^ true
			]
		ifNotNil:[
			newFile nextPut: self stream next.
			(self stream position \\ 100000 = 0)
				ifTrue: [progressBar done: (self stream position / streamsize)]
			]
	]repeat