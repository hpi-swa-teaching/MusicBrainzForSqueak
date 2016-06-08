metadataView
getMetadataTrack
	| trackMetadata |
	trackMetadata := OrderedCollection new.
	trackMetadata 
		add: 'Title: ', self selectedEntity getTitle;
		add: 'Artist: ', self selectedEntity getArtists asCommaString;
		add: 'Length: ', self selectedEntity getLengthInMinutes.
	self selectedEntity metadata at: #Year ifPresent:
		[:year | trackMetadata add: ('Year: ', year)].	
	trackMetadata
		add: 'MBID: ', self selectedEntity getMBID;
		add: '';
		add: 'More: ';
		add: ''.
	self selectedEntity metadata keysAndValuesDo: [:key :value |
		(#(Title Artist Length Year)  includes: key )
		ifFalse:  [trackMetadata add: key asString, ': ', value]].
	^ trackMetadata
