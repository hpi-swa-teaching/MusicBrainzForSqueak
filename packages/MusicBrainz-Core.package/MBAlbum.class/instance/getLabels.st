as yet unclassified
getLabels

	self metadata at: #Label ifAbsent:
		[^ OrderedCollection new].
	
	^ (self metadata at: #Label) splitBy: '/' asOrderedCollection.