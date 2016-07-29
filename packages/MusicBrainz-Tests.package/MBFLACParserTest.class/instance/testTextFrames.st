testing
testTextFrames 

| dict | 
dict := Dictionary newFrom:{
		#ALBUM -> #'Album'.
		#BPM -> #'Beats per Minute'.
		#COMPILATION -> #'iTunes Compilation Flag'.
		#COMPOSER -> #'Composer'.
		#GENRE -> #'Genre'.
		#ENCODEDBY -> #'Encoded by'.
		#LYRICIST -> #'Lyricist'.
		#GROUPING -> #'Content group'.
		#TITLE -> #'Title'.
		#SUBTITLE -> #'Subtitle'.
		#LANGUAGE -> #'Language'.
		#ORIGINALYEAR -> #'Original release year'.
		#ARTIST -> #'Artist'.
		#ALBUMARTIST -> #'Artist'.
		#CONDUCTOR -> #'Conductor'.
		#REMIXER -> #'Modified by'.
		#YEAR -> #'Original release year'.
		#DISCNUMBER -> #'Part of set'.
		#LABEL -> #'Label'.
		#TRACKNUMBER -> #'Track Number'.
		#ISRC -> #'ISRC'.
		#DATE -> #'Year'.
		#DESCRIPTION -> #'Description'.
	}.
self assert: dict equals: MBFLACParser textFrames 