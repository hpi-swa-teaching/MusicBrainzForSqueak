as yet unclassified
setMetadataFor: aSymbol with: aCollection

	| label value |
	label := MBMP3Parser textFrames
				at: aSymbol
				ifAbsent: [self inform: 'Included an unknown tag: T' , aSymbol.
					('T' , aSymbol) asSymbol].
	value := self deleteNullBytesFrom: aCollection.
	label = #Length 
	ifTrue: [self track setLength: value]
	ifFalse: [
	self track metadata at: label put: value]