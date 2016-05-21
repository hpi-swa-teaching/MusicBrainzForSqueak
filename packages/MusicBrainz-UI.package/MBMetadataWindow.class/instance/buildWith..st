as yet unclassified
buildWith: builder

| windowSpec listSpec |

windowSpec:= builder pluggableWindowSpec new.
windowSpec 
		model: self;
		extent: 500@250;
		label: 'Metadata';
		children: OrderedCollection new.

listSpec:= builder pluggableListSpec new.
listSpec
		model: self;
		list: #getMetadata;
		frame: (0@0 corner: 1@1).

windowSpec children add: listSpec.
^ builder build: windowSpec