accessing
selectedEntity: anObject 
	selectedEntity := anObject.
	self 
		changed: #selectedEntity;
		changed: #isAlbumOrTrackSelected;
		changed: #getMetadata;
		changed: #isNewTrack