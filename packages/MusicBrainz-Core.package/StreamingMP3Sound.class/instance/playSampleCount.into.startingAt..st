playing
playSampleCount: n into: aSoundBuffer startingAt: startIndex
	"Mix the next n samples of this sound into the given buffer starting at the given index"

	| current |
	self repeat ifTrue: [  "loop if necessary"
		current := mpegFile audioGetSample: mpegStreamIndex.
		(totalSamples - current) < n ifTrue: [
			mpegFile audioSetSample: 0 stream: mpegStreamIndex]].

	mutex critical: [
		lastBufferMSecs := Time millisecondClockValue.
		self loadBuffersForSampleCount: (n * streamSamplingRate) // SoundPlayer samplingRate.
		mixer playSampleCount: n into: aSoundBuffer startingAt: startIndex].
