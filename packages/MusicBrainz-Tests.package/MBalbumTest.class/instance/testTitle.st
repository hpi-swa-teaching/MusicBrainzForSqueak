as yet unclassified
testTitle

	| tracklist  compareValue |
	
	tracklist := self album getTitle.
	compareValue := 'If You Wait'.
	self assert: (tracklist = compareValue )