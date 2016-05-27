as yet unclassified
loadFromLocalSTON
	| fileStream |
	fileStream := SwaLint
				try: [MBSTONHandler path readOnlyFileNamed: 'albums.ston']
				catch: [^ nil].
	^ STON fromString: fileStream contents