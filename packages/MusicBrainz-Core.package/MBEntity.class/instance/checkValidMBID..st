accessing
checkValidMBID: aString
	
	| newMBID hexDigits |
	newMBID := aString asLowercase.
	hexDigits := OrderedCollection newFrom: #('0' '1' '2' '3' '4' '5' '6' '7' '8' '9' 'a' 'b' 'c' 'd' 'e' 'f').
	(newMBID size ~= 36)
		ifTrue: [^ false].
	1 to: 8 do: [:each | ((hexDigits occurrencesOf: (newMBID at: each) asString ) = 0) ifTrue: [^ false]].
	((newMBID at: 9) asString ~= '-')
		ifTrue: [^ false].
	10 to: 13 do: [:each | ((hexDigits occurrencesOf: (newMBID at: each) asString ) = 0) ifTrue: [^ false]].
	((newMBID at: 14) asString ~= '-')
		ifTrue: [^ false].
	15 to: 18 do: [:each | ((hexDigits occurrencesOf: (newMBID at: each) asString ) = 0) ifTrue: [^ false]].
	((newMBID at: 19) asString ~= '-')
		ifTrue: [^ false].
	20 to: 23 do: [:each | ((hexDigits occurrencesOf: (newMBID at: each) asString ) = 0) ifTrue: [^ false]].
	((newMBID at: 24) asString ~= '-')
		ifTrue: [^ false].
	25 to: 36 do: [:each | ((hexDigits occurrencesOf: (newMBID at: each) asString ) = 0) ifTrue: [^ false]].
	^ true