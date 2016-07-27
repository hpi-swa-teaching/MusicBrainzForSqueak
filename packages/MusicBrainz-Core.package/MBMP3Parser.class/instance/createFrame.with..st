writing
createFrame: aTag with: anInteger 
	| frame |
	frame := OrderedCollection new.
	frame 
		addAll: aTag;
		addAll: (self createFrameSizeBytes: anInteger);
		addAll: (self stream next: 2);
		addAll: (self copyFrame: anInteger).
	^ frame