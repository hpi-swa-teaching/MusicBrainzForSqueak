initialization
initMPEGFile: anMPEGFile streamIndex: anInteger
	"Initialize for playing the given stream of the given MPEG or MP3 file."

	volume := 0.3.
	repeat := false.
	mpegFile := anMPEGFile.
	mpegStreamIndex := anInteger.
	totalSamples := mpegFile audioSamples: mpegStreamIndex.
	self reset.
