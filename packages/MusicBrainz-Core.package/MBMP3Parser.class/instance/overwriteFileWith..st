writing
overwriteFileWith: aFile 
	| buffer |
	buffer := String new: 1000.
	self stream
		untilEnd: [aFile
				nextPutAll: (self stream nextInto: buffer)]
		displayingProgress: 'Writing File'.
	self copyFile: aFile toFile: self stream