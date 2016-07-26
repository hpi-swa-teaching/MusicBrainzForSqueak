accessing
hasEssentialMetadata
	self class essentialMetadataKeys 
		do: [:each | (self metadata keys hasLiteral: each) 
					ifFalse: [^ false]].
	^ true