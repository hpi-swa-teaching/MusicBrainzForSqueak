metadataView
getMetadataTrack
	| trackMetadata |
	trackMetadata := OrderedCollection new.
	trackMetadata 
		add: 'Titel: ', self selectedEntity getTitle;
		add: 'Interpreten: ', self selectedEntity getArtists asCommaString;
		add: 'Länge: ', self selectedEntity getLengthInMinutes.
	^ trackMetadata
