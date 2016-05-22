building
buildDeprecatedTrackView
	| listSpec |
	listSpec:= self builder pluggableListSpec new.
	^ listSpec 
		model: self;
		list: #allTracks;
		frame: (0@0.3 corner: 0.3@0.8)
