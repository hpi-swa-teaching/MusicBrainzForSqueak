loadFromMB
findMBID 
	self setMBID: (MBRequest getMBIDForTrack: self).
	^ self getMBID