accessing
getLengthInMinutes
	self getLength
		ifNil: [^ nil]
		ifNotNilDo: [:length | ^ (self convertMillisecToMinutes: length)]
