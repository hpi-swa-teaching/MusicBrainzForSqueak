accessing
mbAlbums
	mbAlbums ifNil: [
		self mbAlbums: OrderedCollection new].
	^ mbAlbums