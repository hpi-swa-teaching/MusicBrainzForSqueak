building
buildDeprecatedAlbumView
	| listSpec |
	listSpec:= self builder pluggableListSpec new.
	^ listSpec 
		model:self;
		list: #albums;
		frame: (0@0.8 corner:1@1)
		