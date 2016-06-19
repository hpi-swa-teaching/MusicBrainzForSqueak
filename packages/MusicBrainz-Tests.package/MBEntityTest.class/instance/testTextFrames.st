as yet unclassified
testTextFrames
| dict |
dict := Dictionary newFrom:{
		#ALB -> 'Album'.
		#BPM -> 'Beats per Minute'.
		#COM -> 'Composer'.
		#EXT -> 'Lyricist'.
		#FLT -> 'File type'.
		#IME -> 'Time'.
		#IT1 -> 'Content group'.
		#IT2 -> 'Title'.
		#IT3 -> 'Subtitle'.
		#PE3 -> 'Conductor'.
		
	}.
	
self assert: MBEntity textFrames equals: dict