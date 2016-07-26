accessing
addTrack: aMBTrack
	
	| newalbum |
	aMBTrack albumEntity: nil.
	aMBTrack metadata at: #Album ifAbsent:
	[self albums do: [:each | 
		(each getTitle = 'Unknown')
		ifTrue: [
			(each tracklist) add: aMBTrack.
			aMBTrack albumEntity: each.
			^ self]]].

	self albums do: [:each | 
		(each getTitle = (aMBTrack metadata at: #Album))
		ifTrue: [
			(each tracklist) add: aMBTrack.
			aMBTrack albumEntity: each.]].
	
	aMBTrack albumEntity
		ifNil: [
			newalbum := MBAlbum new.
			newalbum tracklist add: aMBTrack.
			aMBTrack albumEntity: newalbum.
			newalbum metadata at: #Title put: (aMBTrack metadata at: #Album).
			aMBTrack metadata at: #Artist ifPresent:
				[:artist | newalbum metadata at: #Artist put: artist].
			self albums add: newalbum].
		
	(aMBTrack cover isNil not and: aMBTrack albumEntity cover isNil)
		ifTrue: [aMBTrack albumEntity cover: aMBTrack cover.
				aMBTrack cover: nil].
	aMBTrack cover ifNotNil: [aMBTrack cover: nil]