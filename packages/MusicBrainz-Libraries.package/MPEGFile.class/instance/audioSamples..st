audio
audioSamples: aStream
	"Returns -1 if error, 
	otherwise returns audioSamples for stream aStream"
	self hasAudio ifFalse: [^-1].
	^[(self primAudioSamples: self fileHandle stream: aStream) asInteger] on: Error do: [-1]
