accessing
checkValidMBID: aString
	
	| mbidRegex |
	"mbidRegex := '([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})'.
	(aString ~= mbidRegex) ifTrue: [Transcript show: 'matched'] ifFalse: [Transcript show: 'no match!']. 
	Transcript show: aString.
	Transcript show: (aString matchesRegexIgnoringCase: mbidRegex).
	Transcript show: ('aa' matchesRegex: '[a]{1,3}')."
	
	^ true