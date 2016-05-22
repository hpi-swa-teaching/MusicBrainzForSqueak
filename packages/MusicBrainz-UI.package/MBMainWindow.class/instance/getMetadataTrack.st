metadataView
getMetadataTrack
	| trackMetadata artistCollection artists |
	artistCollection := self selectedEntity getArtists.
	artists := ''.
	artistCollection do: [:artist | 
		artists = '' 
		ifTrue: [artists := artist] 
		ifFalse: [artists := artists, ', ', artist]
		].
	trackMetadata := OrderedCollection new.
	trackMetadata 
		add: 'Titel: ', self selectedEntity getTitle;
		add: 'Interpreten: ', artists;
		add: 'Länge: ', self selectedEntity getLengthInMinutes.
	^ trackMetadata
