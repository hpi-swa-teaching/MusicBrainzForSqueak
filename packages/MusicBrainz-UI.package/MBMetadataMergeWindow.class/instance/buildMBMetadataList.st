as yet unclassified
buildMBMetadataList 
	| metadataSpec |
	metadataSpec := self builder pluggableListSpec new.
	^ metadataSpec 
		model: self;
"		list: #getMetadata;
		getSelected: #selectedMetadata;
		setSelected: #selectedMetadata:;"
		frame: (0.5@0.1 corner: 1@1)
		