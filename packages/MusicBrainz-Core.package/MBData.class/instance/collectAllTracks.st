accessing
collectAllTracks
	| tracks | 
	tracks := OrderedCollection new.
	self albums do: [:album | tracks addAll: (self getTracklistForAlbum: album)].
	^ tracks 