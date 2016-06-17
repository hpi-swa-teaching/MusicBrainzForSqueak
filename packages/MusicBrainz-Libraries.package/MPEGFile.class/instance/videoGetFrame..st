video
videoGetFrame: aStream
	"Returns frame number, or -1 if error"
	self hasVideo ifFalse: [^-1].
	^[(self primGetFrame: self fileHandle stream: aStream) asInteger] on: Error do: [-1]
