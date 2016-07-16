accessing
getCover
	^ self cover ifNil: [
		| newCover |
		newCover := self loadCoverFromDirectory.
		newCover 
		ifNil: [self cover: self loadFrontcoverFromMB]
		ifNotNil: [self cover: newCover].
		^ self cover
	]