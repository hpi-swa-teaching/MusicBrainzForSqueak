accessing
asString
	| label length artists |
	label := self addTracknumber.
	artists:= self metadata at: #Artist. 
	label := (label , self getTitle, self class labelSeparator, artists asString).
	length := self getLengthInMinutes ifNil: [''].
	length ~= ''
		ifTrue: [label := label, self class labelSeparator, length].
	^ label