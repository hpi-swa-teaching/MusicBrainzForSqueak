accessing
setUp
	self flacfile: Smalltalk imagePath, FileDirectory slash,'albums',FileDirectory slash,'test.flac'.
	self emptyParser: MBFLACParser new.