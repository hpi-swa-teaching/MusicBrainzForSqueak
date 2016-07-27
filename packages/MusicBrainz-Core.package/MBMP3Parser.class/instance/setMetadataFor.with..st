parsingFrames
setMetadataFor: aSymbol with: aCollection

	| label |
	label := self class textFrames
				at: aSymbol
				ifAbsent: [self inform: 'Included an unknown tag: T' , aSymbol.
					('T' , aSymbol) asSymbol].
	self track metadata at: label put: (self deleteNullBytesFrom: aCollection)