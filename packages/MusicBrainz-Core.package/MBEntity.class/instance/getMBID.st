accessing
getMBID
	self mbid ifNil: [
		^ self findMBID].
	^ self mbid