playing
reset

	super reset.
	self createMixer.
	mpegFile audioSetSample: 0 stream: mpegStreamIndex.
	lastBufferMSecs := 0.
	mutex := Semaphore forMutualExclusion.
