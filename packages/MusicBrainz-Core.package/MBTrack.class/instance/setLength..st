loadFromMB
setLength: aString
	self metadata at: #Length put: (self convertMillisecToMinutes: aString)