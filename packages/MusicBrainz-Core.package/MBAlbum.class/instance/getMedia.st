accessing
getMedia
	self metadata at: #Media ifAbsent:
		[^ OrderedCollection new].	
	^ (self metadata at: #Media) splitBy: '/' asOrderedCollection