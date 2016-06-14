primitives
primFileOpen: aPath
	"Open the file"
	<primitive: 'primitiveMPEG3Open' module: 'Mpeg3Plugin'>
	self primitiveFailed