metadataView
getMetadataAlbum
	| metadata |
	metadata := OrderedCollection new.
	metadata 
		add: 'Albumname: ' , self selectedEntity getTitle;
		add: 'Interpreten: ' , self selectedEntity getArtists asCommaString;
		add: 'Jahr: ', (self selectedEntity metadata at: #Year ifAbsent: ['']);
		add: 'Label: ', self selectedEntity getLabels asCommaString;
		add: 'Medium: ', self selectedEntity getMedia asCommaString;
		add: 'MBID: ', self selectedEntity getMBID.
	^ metadata