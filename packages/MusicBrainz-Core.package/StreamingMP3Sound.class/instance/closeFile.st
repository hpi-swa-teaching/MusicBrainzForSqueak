file ops
closeFile
	"Close the MP3 or MPEG file."

	self pause.
	mpegFile ifNil: [^ self].
	mpegFile closeFile.
	mpegFile := nil.
	mixer := nil.
