audio
endOfAudio: aStream
	"Returns true if end of Audio"
	self hasAudio ifFalse: [^true].
	^self primEndOfAudio: self fileHandle stream: aStream
