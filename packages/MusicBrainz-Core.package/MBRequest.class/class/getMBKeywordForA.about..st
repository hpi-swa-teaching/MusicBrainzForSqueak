request
getMBKeywordForA: aMBEntity about: aString
	aMBEntity isTrack 
		ifTrue: [^ (MBRequest mbTrackSearchFields at: (aString asSymbol) ifAbsent: nil)]
		ifFalse: [^ (MBRequest mbAlbumSearchFields at: (aString asSymbol) ifAbsent: nil)].
