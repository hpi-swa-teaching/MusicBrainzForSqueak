audio
audioSampleRate: aStream
	"Returns sample rate, or -1 if error"
	self hasAudio ifFalse: [^-1].
	^[self primSampleRate: self fileHandle stream: aStream] on: Error do: [-1]
