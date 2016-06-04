accessing
getCover

	^ cover ifNil: [
		"Load cover from directory or musicbrainz"
		| newCover |
		newCover := self loadCoverFromDirectory.
		(newCover isNil)
			ifTrue: [self cover: self loadFrontcoverFromMB]
			ifFalse: 	[self cover: newCover].
		^ cover
	]