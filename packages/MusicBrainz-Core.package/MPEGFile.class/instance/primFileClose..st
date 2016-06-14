primitives
primFileClose: aHandle
	"Close the file"
	<primitive: 'primitiveMPEG3Close' module: 'Mpeg3Plugin'>
	self primitiveFailed