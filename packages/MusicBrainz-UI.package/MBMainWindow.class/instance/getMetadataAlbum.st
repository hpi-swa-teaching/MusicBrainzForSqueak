metadataView
getMetadataAlbum
	| metadata |
	metadata := OrderedCollection new.
	metadata 
		add: 'Album: ' , self selectedEntity getTitle;
		add: 'Artist: ' , self selectedEntity getArtists asCommaString;
		add: 'Year: ', (self selectedEntity metadata at: #Year ifAbsent: ['']);
		add: 'Label: ', self selectedEntity getLabels asCommaString;
		add: 'Media: ', self selectedEntity getMedia asCommaString;
		add: 'MBID: ', self selectedEntity getMBID.
	^ metadata