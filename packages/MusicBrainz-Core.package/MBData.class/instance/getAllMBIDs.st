metadata-management
getAllMBIDs

	self collectAllTracks do: [:each | each findMBID]