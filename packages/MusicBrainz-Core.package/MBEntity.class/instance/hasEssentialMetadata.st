accessing
hasEssentialMetadata
	self class essentialMetadataKeys 
		collect: [:each | (self metadata keys hasLiteral: each) 
					ifFalse: [^ false]].
	^ true