metadataView
getMetadataAlbum
	| metadata artists artistCollection |
	artistCollection := self selectedEntity getArtists.
	artists := ''.
	artistCollection
		do: [:artist | artists = ''
				ifTrue: [artists := artist]
				ifFalse: [artists := artists , ', ' , artist]].
	metadata := OrderedCollection new.
	metadata 
		add: 'Albumname: ' , self selectedEntity getTitle;
		add: 'Interpreten: ' , artists.
	^ metadata