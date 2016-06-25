as yet unclassified
splitMetadata: aString
| splittedString |
	splittedString := aString findTokens: ':'.
	^ Dictionary newFrom: {#label -> splittedString first. #value -> splittedString second allButFirst}