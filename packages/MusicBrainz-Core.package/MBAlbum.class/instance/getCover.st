accessing
getCover

	^ cover ifNil: [
		"Load cover from directory or musicbrainz"
		| newCover |
		newCover := self loadCoverFromDirectory.
		Transcript show: newCover.
		(newCover isNil)
			ifTrue: [self cover: self loadFrontcoverFromMB]
			ifFalse: 	[self cover: newCover].
		^ cover
	]