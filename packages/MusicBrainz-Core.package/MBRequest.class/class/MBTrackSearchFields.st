dictionary
MBTrackSearchFields
"Dictionary to map intern keys (specific for tracks) to musicbrainz keyword"

	^ Dictionary newFrom: {
		#Title -> 'recording'.
		#Length -> 'dur'.
		#Album -> 'release'.
		#Composer -> 'artistname'.
		#'Track Number'-> 'tnum'}