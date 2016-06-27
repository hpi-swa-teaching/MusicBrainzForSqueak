accessing
selectedEntity: anObject 
	selectedEntity := anObject.
	self 
		selectedMetadata: nil;
		changed: #selectedEntity;
		changed: #isAlbumOrTrackSelected;
		changed: #getMetadata;
		changed: #isNewTrack