parsing
getUTF8String: anInteger
	|string|
	string := String new.
	anInteger timesRepeat: [string := string, self stream next asCharacter].
	^ string