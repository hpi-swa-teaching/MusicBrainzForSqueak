as yet unclassified
writeID3HeaderWith: aDictionary to: aFile 
		aFile
		nextPutAll: 'ID3';
		nextPutAll: #[3 0 0].
	(self createID3SizeBytes: (aDictionary size + 10)) do: [:each | aFile nextPut: each].
	aDictionary do: [:each | aFile nextPut: each].
	self stream position: self id3size.