im&ex-porting
addTrack: aMBTrack
	
	| newalbum |
	aMBTrack albumentity: nil.
	
	self albums do: [:each | 
		(each getTitle = (aMBTrack metadata at: #Album))
		ifTrue: [
			(each tracklist) add: aMBTrack.
			aMBTrack albumentity: each.
			]
		].
	
	aMBTrack albumentity
		ifNil: [
			newalbum := MBAlbum new.
			newalbum tracklist add: aMBTrack.
			aMBTrack albumentity: newalbum.
			newalbum metadata at: #Title put: (aMBTrack metadata at: #Album).
			newalbum metadata at: #Artist put: (aMBTrack metadata at: #Artist).
			self albums add: newalbum.
			]