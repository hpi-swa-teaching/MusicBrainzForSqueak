metadataView
getMetadataAlbum
	| metadata |
	self getMetadataImage.
	metadata := OrderedCollection new.
	metadata 
		add: 'Albumname: ' , self selectedEntity getTitle;
		add: 'Interpreten: ' , self selectedEntity getArtists asCommaString;
		add: 'Jahr: ', self selectedEntity getYear;
		add: 'Label: ', self selectedEntity getLabels asCommaString;
		add: 'Medium: ', self selectedEntity getMedia asCommaString;
		add: 'MBID: ', self selectedEntity mbid.
	^ metadata