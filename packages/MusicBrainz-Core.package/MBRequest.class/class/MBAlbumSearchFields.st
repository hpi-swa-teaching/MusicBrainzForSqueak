dictionary
MBAlbumSearchFields
"Dictionary to map intern keys (specific for albums) to musicbrainz keyword"

	^ Dictionary newFrom: {
		#Title -> 'release'.
		#Artist -> 'artistname'.
		#Composer -> 'artistname'}