audio
audioChannels: aStream
	"Returns -1 if error, otherwise returns audioChannels for stream aStream"
	self hasAudio ifFalse: [^ 0].
	^[self primAudioChannels: self fileHandle stream: aStream] on: Error do: [-1]
