file ops
mpegFileIsOpen
	"Answer true if I have an open, valid MPEG file handle. If the handle is not valid, try to re-open the file."

	mpegFile ifNil: [^ false].
	mpegFile fileHandle ifNil: [
		"try to reopen the file, which may have been saved in a snapshot"
		mpegFile openFile: mpegFile fileName.
		mpegFile fileHandle ifNil: [mpegFile := nil]].
	^ mpegFile notNil
