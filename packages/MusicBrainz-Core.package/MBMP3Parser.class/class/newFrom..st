as yet unclassified
newFrom: aPath
	| parser |
	
	parser := MBMP3Parser new openStreamOn: aPath.
	parser track filepath: aPath.
	^parser