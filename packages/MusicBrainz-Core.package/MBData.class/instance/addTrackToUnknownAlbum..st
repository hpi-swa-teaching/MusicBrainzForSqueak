track handling
addTrackToUnknownAlbum: aMBTrack
	
	self albums do: [:each | 
		(each getTitle = 'Unknown')
		ifTrue: [
			self setReferencesIn: each containing: aMBTrack]]
