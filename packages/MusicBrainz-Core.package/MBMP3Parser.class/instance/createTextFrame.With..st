writing
createTextFrame: aTag With: aString
	| frame |
	frame := ReadWriteStream on: OrderedCollection new.
	frame
		nextPutAll: aTag;
		nextPutAll: (self createFrameSizeBytes: (aString size + 1));
		nextPutAll: #(0 0 0);
		nextPutAll: aString.
	^frame contents