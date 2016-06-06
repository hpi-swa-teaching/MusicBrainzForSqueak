as yet unclassified
newFrom: aPath
	| parser |
	
	parser := MBFLACParser new openStreamOn: aPath.
	parser track filepath: aPath.
	^parser