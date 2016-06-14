primitives
primFileValidMPEG: aPath
	"Check to see if the file is valid"
	<primitive: 'primitiveMPEG3CheckSig' module: 'Mpeg3Plugin'>
	self primitiveFailed