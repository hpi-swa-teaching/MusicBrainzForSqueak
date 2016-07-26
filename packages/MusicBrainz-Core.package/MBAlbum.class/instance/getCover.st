accessing
getCover
	^ self cover ifNil: [
		self loadCover.
		^ self cover
	]