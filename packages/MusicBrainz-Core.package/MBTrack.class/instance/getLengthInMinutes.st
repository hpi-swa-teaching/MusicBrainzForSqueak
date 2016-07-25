accessing
getLengthInMinutes
	self getLength ifNil: [^ ''].
	^ (self convertMillisecToMinutes: self getLength)