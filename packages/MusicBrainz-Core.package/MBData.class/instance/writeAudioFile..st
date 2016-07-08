accessing
writeAudioFile: aMBTrack

	| parser |
	(aMBTrack isMP3)
		ifFalse: [^ nil].
		
	parser := MBMP3Parser new openStreamOn: aMBTrack filepath.
	parser writeMetadata: aMBTrack metadata