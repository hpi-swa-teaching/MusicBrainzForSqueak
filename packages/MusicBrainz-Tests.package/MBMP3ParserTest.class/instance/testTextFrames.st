as yet unclassified
testTextFrames 

| dict | 
dict := Dictionary newFrom:{
		#TALB -> #'Album'.
		#TBPM -> #'Beats per Minute'.
		#TCMP -> #'iTunes Compilation Flag'.
		#TCOM -> #'Composer'.
		#TCON -> #'Genre'.
		#TENC -> #'Encoded by'.
		#TEXT -> #'Lyricist'.
		#TFLT -> #'File type'.
		#TIME -> #'Time'.
		#TIT1 -> #'Content group'.
		#TIT2 -> #'Title'.
		#TIT3 -> #'Subtitle'.
		#TLAN -> #'Language'.
		#TLEN -> #'Length'.
		#TORY -> #'Original release year'.
		#TPE1 -> #'Artist'.
		#TPE2 -> #'Artist'. "WAS BAND"
		#TPE3 -> #'Conductor'.
		#TPE4 -> #'Modified by'.
		#TPOS -> #'Part of set'.
		#TPUB -> #'Label'.
		#TRCK -> #'Track Number'.
		#TRDA -> #'Recording Dates'.
		#TSIZ -> #'Size'.
		#TSRC -> #'ISRC'.
		#TYER -> #'Year'.
		#TCOP -> #'Copyright'.
	}.
self assert: dict equals: MBMP3Parser textFrames 