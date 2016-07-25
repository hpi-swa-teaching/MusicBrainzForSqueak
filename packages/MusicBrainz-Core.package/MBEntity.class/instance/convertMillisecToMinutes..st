accessing
convertMillisecToMinutes: aNumber
	| lengthInSeconds numMinutes numSeconds |
	lengthInSeconds := aNumber / 1000 roundDownTo: 1.
	numMinutes := lengthInSeconds / 60 roundDownTo: 1.
	numSeconds := lengthInSeconds - (numMinutes * 60) roundTo: 1.
	numSeconds < 10
		ifTrue: [numSeconds := '0' , numSeconds].
	^ numMinutes asString , ':' , numSeconds