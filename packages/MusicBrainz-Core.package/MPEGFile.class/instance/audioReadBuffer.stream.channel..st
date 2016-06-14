audio
audioReadBuffer: aBuffer stream: aStreamNumber channel: aChannelNumber 
	"Returns -1 if error, otherwise 0"
	self hasAudio ifFalse: [^-1].
	^[self audioReadBuffer: aBuffer stream: aStreamNumber channel: aChannelNumber samples: (aBuffer size* aBuffer bytesPerElement)//2] on: Error do: [-1]