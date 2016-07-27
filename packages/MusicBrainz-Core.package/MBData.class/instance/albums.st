accessing
albums
	^ albums ifNil: [
			| unknownAlbum |
			self albums: OrderedCollection new.
			unknownAlbum := MBAlbum new.
			unknownAlbum metadata at: #Title put: 'Unknown'.
			self albums add: unknownAlbum.
			self albums]