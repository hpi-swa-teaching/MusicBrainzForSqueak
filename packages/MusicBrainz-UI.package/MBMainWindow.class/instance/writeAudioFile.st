im&ex-porting
writeAudioFile
	| parser track |
	track := self selectedEntity.
	parser := MBMP3Parser new openStreamOn: track filepath.
	parser writeMetaData: track metadata