as yet unclassified
allTracks

| albums tracks |

albums:= self albums.
tracks:= OrderedCollection new.
albums collect: 
	[:album | tracks addAll: (self tracksForAlbum: album).].
^ tracks