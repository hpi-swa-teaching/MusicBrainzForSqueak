audio
audioReReadBuffer: aBuffer stream: aStreamNumber channel: aChannelNumber samples: aSampleNumber
	"Used to read other channels after first ReadBuffer 
	Returns -1 if error, otherwise 0
	Note this call requires passing in the samples to read, ensure you get the number right"
	self hasAudio ifFalse: [^-1].
	^[self primAudioReReadBuffer: self fileHandle  buffer: aBuffer channel: aChannelNumber samples: aSampleNumber stream: aStreamNumber] on: Error do: [-1]