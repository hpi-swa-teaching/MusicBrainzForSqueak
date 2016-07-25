writing
writeMetadata: aDictionary
	| newFile|
	[newFile := self getTempFile.
	self prepareFile.
	self writeID3HeaderWith: (self createUpdatedFramesFrom: aDictionary) to: newFile.
	self overwriteFileWith: newFile
	] ensure: [self cleanUp: newFile]