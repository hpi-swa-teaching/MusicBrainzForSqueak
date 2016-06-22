as yet unclassified
testGetMetadataImage
	| musicBrainz |
	musicBrainz := MBMainWindow open.
	musicBrainz model 
		selectedEntity: MBMockData mockAlbum;
	 	getMetadataImage.
	self 
		assert: musicBrainz model getMetadataImage class = MBMainWindow;
		assert: musicBrainz model coverView morphClass = ImageMorph;
		assert: musicBrainz model coverView morph image class = Form.
	musicBrainz delete.