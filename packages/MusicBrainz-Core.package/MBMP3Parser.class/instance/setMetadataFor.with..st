as yet unclassified
setMetadataFor: aSymbol with: aCollection

	| label |
	label := MBMP3Parser textFrames
				at: aSymbol
				ifAbsent: [self inform: 'Included an unknown tag: T' , aSymbol.
					('T' , aSymbol) asSymbol].
	self track metadata at: label put: (self deleteNullBytesFrom: aCollection)