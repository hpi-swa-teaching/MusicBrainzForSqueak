as yet unclassified
buildWith: builder

| windowSpec listSpec |

windowSpec:= builder pluggableWindowSpec new.
windowSpec 
		model: self;
		extent: 500@250;
		label: 'FileDirectory';
		children: OrderedCollection new.

self currentDirectory: 'C:/'.
listSpec:= builder pluggableListSpec new.
listSpec 
		model: self;
		list: #showFileNames;
		frame: (0@0 corner:1@1).

windowSpec children add: listSpec.
^ builder build: windowSpec