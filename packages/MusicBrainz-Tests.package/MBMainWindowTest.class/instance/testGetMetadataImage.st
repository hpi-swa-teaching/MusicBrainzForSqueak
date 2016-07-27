as yet unclassified
testGetMetadataImage
	| musicBrainz |
	musicBrainz := MBMainWindow open.
	musicBrainz model 
		selectedEntity: MBMockData mockAlbum;
	 	getMetadataImage.
	self 
		assert: MBMainWindow equals: musicBrainz model getMetadataImage class;
		assert: ImageMorph equals: musicBrainz model coverView morphClass.
	musicBrainz delete.