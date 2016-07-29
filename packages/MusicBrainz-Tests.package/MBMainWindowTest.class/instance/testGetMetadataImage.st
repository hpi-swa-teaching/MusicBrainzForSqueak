TESTING: metadataView
testGetMetadataImage
<timeout: 10>
	| musicBrainz |
	musicBrainz := MBMainWindow open.
	musicBrainz model 
		selectedEntity: MBMockData mockAlbum;
	 	getMetadataImage.
	self 
		assert: ImageMorph
		equals: musicBrainz model coverView morphClass
		description: 'Class of cover should be an imageMorph.'.
	musicBrainz delete.