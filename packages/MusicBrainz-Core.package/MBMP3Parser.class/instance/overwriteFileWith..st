writing
overwriteFileWith: aFile
	| buffer streamsize |
	streamsize := self stream contents size.
	buffer := String new: 1000.
	self stream untilEnd: [aFile nextPutAll: (self stream nextInto: buffer).] displayingProgress: 'Writing File'.
	self copyFile: aFile toFile: self stream.