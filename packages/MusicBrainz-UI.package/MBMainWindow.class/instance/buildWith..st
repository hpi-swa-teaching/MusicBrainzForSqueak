as yet unclassified
buildWith: builder

| windowSpec treeSpec listSpec albumSpec albumListSpec buttonSpec |

windowSpec:= builder pluggableWindowSpec new.
windowSpec 
		model: self;
		extent: 500@500;
		label: 'MusicBrainz';
		children: OrderedCollection new.

"oben links"
treeSpec:= builder pluggableTreeSpec new.
treeSpec 
		model:self;
		getChildren: #tracksForAlbum:;
		roots: #albums;
		frame: (0@0 corner:0.5@0.5).
		
"oben rechts"
albumSpec := builder pluggableTreeSpec new.
albumSpec
		model:self;
		getChildren: #getTracklistForAlbum:;
		roots: #getMBalbums;
		label: #getAlbumName:;
		getSelected: #selectedEntity;
		setSelected: #selectedEntity:;
		frame: (0.5@0 corner: 1@0.5).
		
buttonSpec := builder pluggableButtonSpec new.
buttonSpec
		model: self;
		frame: (0.8@0.8 corner: 1@1);
		action: #openMetadataWindow;
		label: 'Show Metadata'.

"unten links"
listSpec:= builder pluggableListSpec new.
listSpec 
		model:self;
		list: #allTracks;
		frame: (0@0.5 corner:0.5@1).

"untenrechts"
albumListSpec:= builder pluggableListSpec new.
albumListSpec 
		model:self;
		list: #albums;
		frame: (0.5@0.5 corner:1@1).

windowSpec children add: treeSpec.
windowSpec children add: listSpec.
windowSpec children add: albumSpec.
windowSpec children add: albumListSpec.
windowSpec children add: buttonSpec.
^ builder build: windowSpec.