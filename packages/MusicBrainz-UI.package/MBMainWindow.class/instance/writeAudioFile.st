im&ex-porting
writeAudioFile
	
	|track parser|
	track := self selectedEntity.
	"parser := MBAudioParser newFrom: ((FileDirectory on: (track filepath)) entries first)."
	parser := MBMP3Parser new.
	parser openStreamOn: track filepath.
	parser writeMetaData: (track metadata).