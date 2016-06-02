as yet unclassified
getLengthInMinutes
	
	self getLength ifNil: [^ ''].
	^ (self convertMillisecToMinutes: self getLength)