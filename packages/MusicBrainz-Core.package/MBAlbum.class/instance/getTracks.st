as yet unclassified
getTracks

	^ self tracklist ifNil:
		[
			| request tracks |
			request := MBRequest getDetailsForA: (self class entityName) withMBID: (self mbid) about: 'recordings'.
			tracks := OrderedCollection new.
			request tagsNamed: #recording do: [:each | 
				tracks add: (MBTrack new setMBID: (each attributeAt: #id))].
			self 
				tracklist: tracks;
				tracklist]