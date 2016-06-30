dictionary
MBQueryStrings
"Dictionary to map intern keys (specific for tracks) to musicbrainz keyword"

	^ Dictionary newFrom: {
		#Album -> 'releases'.
		#Artist -> 'artists'.
		#Composer -> 'artists'.
		#'Label'-> 'labels'.
		#'Media' -> 'media'.
		#'Tracks' -> 'recordings'.
		#'Comment' -> 'NA'.
		#'Quality' -> 'NA'.
		#'Genre' -> 'NA'}