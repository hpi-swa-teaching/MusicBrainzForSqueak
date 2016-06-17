instance creation
onFileNamed: fileName
	"Answer an instance of me for playing the sound track of the MPEG or MP3 file with the given name. Answer nil the file is not a valid MPEG or MP3 file."

	| mpegFile |
	(MPEGFile isFileValidMPEG: fileName) ifFalse: [^ nil].
	mpegFile := MPEGFile openFile: fileName.
	^ self new initMPEGFile: mpegFile streamIndex: 0  "assume sound track is in stream 0"
