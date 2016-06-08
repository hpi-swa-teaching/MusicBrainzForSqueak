metadataView
splitMetadata
	| splittedString |
	splittedString := self selectedMetadata findTokens: ':'.
	^ Dictionary newFrom: {#label -> splittedString first. #value -> splittedString second allButFirst}