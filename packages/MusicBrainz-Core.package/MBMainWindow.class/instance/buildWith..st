as yet unclassified
buildWith: builder

| windowSpec treeSpec  |

windowSpec:= builder pluggableWindowSpec new.
windowSpec 
		model: self;
		extent: 500@500;
		label: 'MusicBrainz';
		children: OrderedCollection new.

treeSpec:= builder pluggableTreeSpec new.
treeSpec 
		model:self;
		getChildren: #tracksForAlbums:;
		roots: #albums;
		frame: (0@0 corner:1@1).

windowSpec children add: treeSpec.
^ builder build: windowSpec.