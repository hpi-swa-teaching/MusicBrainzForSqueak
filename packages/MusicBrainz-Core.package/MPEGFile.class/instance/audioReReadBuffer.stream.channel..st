audio
audioReReadBuffer: aBuffer stream: aStreamNumber channel: aChannelNumber
	"Used to read other channels after first ReadBuffer 
	Returns -1 if error, otherwise 0"
	self hasAudio ifFalse: [^-1].
	^[self audioReReadBuffer: aBuffer stream: aStreamNumber channel: aChannelNumber samples: (aBuffer size * aBuffer bytesPerElement // 2)] on: Error do: [-1]