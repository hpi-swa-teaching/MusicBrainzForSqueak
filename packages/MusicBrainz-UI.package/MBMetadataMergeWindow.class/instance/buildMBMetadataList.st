building
buildMBMetadataList 
	| metadataSpec |
	metadataSpec := self builder pluggableMultiSelectionListSpec new.
	^ metadataSpec 
		model: self;
		list: #getMBMetadata;
		getSelectionList: #metadataToMergeAt:;
		setSelectionList: #metadataToMergeAt:Put:;
		frame: (0.65@0.05 corner: 1@0.9)
		