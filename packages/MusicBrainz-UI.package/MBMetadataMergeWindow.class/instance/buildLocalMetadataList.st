building
buildLocalMetadataList 
	| metadataSpec |
	metadataSpec := self builder pluggableMultiSelectionListSpec new.
	^ metadataSpec 
		model: self;
		list: #getLocalMetadata;
"		getSelected: #selectedMetadata;
		setSelected: #selectedMetadata:;"
		frame: (0.3@0.05 corner: 0.65@0.9)
		