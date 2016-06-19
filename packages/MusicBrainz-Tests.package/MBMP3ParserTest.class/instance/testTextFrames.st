as yet unclassified
testTextFrames 

| dict | 
dict := Dictionary newFrom:{
		#ALB -> #'Album'.
		#BPM -> #'Beats per Minute'.
		#CMP -> #'iTunes Compilation Flag'.
		#COM -> #'Composer'.
		#CON -> #'Genre'.
		#ENC -> #'Encoded by'.
		#EXT -> #'Lyricist'.
		#FLT -> #'File type'.
		#IME -> #'Time'.
		#IT1 -> #'Content group'.
		#IT2 -> #'Title'.
		#IT3 -> #'Subtitle'.
		#LAN -> #'Language'.
		#LEN -> #'Length'.
		#ORY -> #'Original release year'.
		#PE1 -> #'Artist'.
		#PE2 -> #'Artist'. "WAS BAND"
		#PE3 -> #'Conductor'.
		#PE4 -> #'Modified by'.
		#POS -> #'Part of set'.
		#PUB -> #'Label'.
		#RCK -> #'Track Number'.
		#RDA -> #'Recording Dates'.
		#SIZ -> #'Size'.
		#SRC -> #'ISRC'.
		#YER -> #'Year'.
		#COP -> #'Copyright'.
	}.
self assert: dict equals: MBFLACParser textFrames 