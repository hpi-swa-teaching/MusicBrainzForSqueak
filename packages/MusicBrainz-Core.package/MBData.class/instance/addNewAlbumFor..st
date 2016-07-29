track handling
addNewAlbumFor: aMBTrack	
	| newAlbum |
	newAlbum := MBAlbum new.
	self setReferencesIn: newAlbum containing: aMBTrack.
	self copyMetadataFrom: aMBTrack to: newAlbum.
	self albums add: newAlbum.
	^ newAlbum
