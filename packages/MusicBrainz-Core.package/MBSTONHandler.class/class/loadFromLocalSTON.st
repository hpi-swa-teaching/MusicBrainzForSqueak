saving and loading
loadFromLocalSTON
	| fileStream |
	fileStream := MBSTONHandler path readOnlyFileNamed: 'albums.ston'.
	[^ STON fromString: fileStream contents] on: Exception do: [ ^ nil]