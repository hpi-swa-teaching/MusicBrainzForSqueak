accessing
hasEssentialMetadata

self class standardMetadataKeys collect: [:each | (self metadata keys hasLiteral: each) 
													ifFalse: [^false]].
^true