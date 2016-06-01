im&ex-porting
addTrack: aMBTrack
	
	| newalbum |
	aMBTrack albumentity: nil.
	
	self albums do: [:each | 
		(each title = (aMBTrack tags at: #Album))
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
			newalbum title: (aMBTrack tags at: #Album).
			newalbum artists: OrderedCollection new.
			newalbum artists add: (aMBTrack tags at: #Interpret).
			self albums add: newalbum.
			]