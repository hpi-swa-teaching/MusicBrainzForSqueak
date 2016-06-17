video
endOfVideo: aStream
	"Returns true if end of video"
	self hasVideo ifFalse: [^true].
	^self primEndOfVideo: self fileHandle stream: aStream
