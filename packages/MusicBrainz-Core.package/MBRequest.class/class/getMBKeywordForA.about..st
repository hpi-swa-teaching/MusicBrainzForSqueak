request
getMBKeywordForA: aMBEntity about: aString

	aMBEntity isTrack 
		ifTrue: [^ (MBRequest MBTrackSearchFields at: (aString asSymbol) ifAbsent: nil)]
		ifFalse: [^ (MBRequest MBAlbumSearchFields at: (aString asSymbol) ifAbsent: nil)].
