metadataView
getMetadataTrack
	| trackMetadata |
	trackMetadata := OrderedCollection new.
	trackMetadata 
		add: 'Titel: ', self selectedEntity getTitle;
		add: 'Interpreten: ', self selectedEntity getArtists asCommaString;
		add: 'Länge: ', self selectedEntity getLengthInMinutes.
	self selectedEntity metadata at: #Year ifPresent:
		[:year | trackMetadata add: ('Jahr: ', year)].	
	trackMetadata
		add: 'MBID: ', self selectedEntity getMBID;
		add: '';
		add: 'Weiteres';
		add: ''.
	self selectedEntity metadata keysAndValuesDo: [:key :value |
		(#(Title Artist Length Album Year)  includes: key )
		ifFalse:  [trackMetadata add: key asString, ': ', value]].
	^ trackMetadata
