writing
writeMetaData: aDictionary
	| flags unchangedFrames newFrames newFile progressBar streamsize buffer|
	newFile := self getTempFile.
	self seekID3.
	self validVersion
		ifFalse: [self error: 'Invalid ID3 Version'].
	flags := self stream next.
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
	buffer := String new: 1000.
	[self stream atEnd]
		whileFalse:[
			newFile nextPutAll: (self stream nextInto: buffer).
			progressBar done: (self stream position / streamsize)].
	self copyFile: newFile toFile: self stream.
			self stream close.
			newFile close.
			FileDirectory deleteFilePath: newFile name.
			progressBar delete.