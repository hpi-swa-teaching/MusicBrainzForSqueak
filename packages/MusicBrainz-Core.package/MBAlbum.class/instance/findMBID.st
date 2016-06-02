loadFromMB
findMBID

	self setMBID: (MBRequest getMBIDForAlbum: self).
	^ self getMBID