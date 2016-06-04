im&ex-porting
addTrack: aMBTrack
	
	| newalbum |
	aMBTrack albumentity: nil.
	aMBTrack metadata at: #Album ifAbsent:
	[self albums do: [:each | 
		(each getTitle = 'Unknown')
		ifTrue: [
			(each tracklist) add: aMBTrack.
			aMBTrack albumentity: each.
			^ self
			]
		]
	].

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
			aMBTrack metadata at: #Artist ifPresent:
				[:artist | newalbum metadata at: #Artist put: artist].
			self albums add: newalbum.
			].
		
	(aMBTrack cover isNil not and: aMBTrack albumentity cover isNil)
		ifTrue: [	aMBTrack albumentity cover: aMBTrack cover]