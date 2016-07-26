loadFromMB
checkValidMBID: aString
	
	| newMBID hexDigits digits separators |
	(aString isNil or: aString = '')
		ifTrue: [^ true].
	newMBID := aString asLowercase.
	(newMBID size ~= 36)
		ifTrue: [^ false].
	hexDigits := OrderedCollection newFrom: #('0' '1' '2' '3' '4' '5' '6' '7' '8' '9' 'a' 'b' 'c' 'd' 'e' 'f').
	digits := ((((1 to: 8) union: (10 to: 13)) union: (15 to: 18)) union: (20 to: 23)) union: (25 to: 36).
	separators := Set newFrom: {9. 14. 19. 24}.
	digits do: [:each | ((hexDigits occurrencesOf: (newMBID at: each) asString ) = 0) ifTrue: [^ false]].
	separators do: [:each | ((newMBID at: each) asString ~= '-') ifTrue: [^ false]].
	^ true