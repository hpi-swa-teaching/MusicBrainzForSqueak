writing
writeMetadata: aDictionary
	| flags unchangedFrames newFrames newFile streamsize buffer|
	[newFile := self getTempFile.
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
	
	streamsize := self stream contents size.
	buffer := String new: 1000.
	self stream untilEnd: [newFile nextPutAll: (self stream nextInto: buffer).] displayingProgress: 'Writing File'.
	self copyFile: newFile toFile: self stream.
	] ensure: [
	self stream close.
	newFile close.
	FileDirectory deleteFilePath: newFile name.]