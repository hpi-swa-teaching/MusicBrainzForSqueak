accessing
getMBID
	self mbid ifNil: [
		^ self findMBID].
	^ mbid