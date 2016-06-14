audio
audioSetSample: aNumber stream: aStream
	"Set number of targeted sample, returns 0 if ok, -1 if failure"
	self hasAudio ifFalse: [^-1].
	^[self primSetSample: self fileHandle sample: aNumber asFloat stream: aStream] on: Error do: [-1]
