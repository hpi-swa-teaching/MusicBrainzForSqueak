writing
createTextFrame: aTag With: aString
	| frame sizebytes flags |
	frame := ReadWriteStream on: OrderedCollection new.
	sizebytes := self createFrameSizeBytes: (aString size + 1).
	flags := #(0 0).
	
	frame
		nextPutAll: aTag;
		nextPutAll: sizebytes;
		nextPutAll: flags;
		nextPut: 0;
		nextPutAll: aString.
	
	^frame contents