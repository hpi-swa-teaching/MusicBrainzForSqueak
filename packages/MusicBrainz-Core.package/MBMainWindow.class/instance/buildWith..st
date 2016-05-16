as yet unclassified
buildWith: builder

| windowSpec treeSpec listSpec albumSpec |

windowSpec:= builder pluggableWindowSpec new.
windowSpec 
		model: self;
		extent: 500@500;
		label: 'MusicBrainz';
		children: OrderedCollection new.

treeSpec:= builder pluggableTreeSpec new.
treeSpec 
		model:self;
		getChildren: #tracksForAlbum:;
		roots: #albums;
		frame: (0@0 corner:0.5@0.5).
		
albumSpec := builder pluggableTreeSpec new.
albumSpec
		model:self;
		getChildren: #getTracklistForAlbum:;
		roots: #getMBalbums;
		label: #getAlbumName:;
		frame: (0.5@0 corner: 1@0.5).

listSpec:= builder pluggableListSpec new.
listSpec 
		model:self;
		list: #allTracks;
		frame: (0@0.5 corner:1@1).


windowSpec children add: treeSpec.
windowSpec children add: listSpec.
windowSpec children add: albumSpec.
^ builder build: windowSpec.