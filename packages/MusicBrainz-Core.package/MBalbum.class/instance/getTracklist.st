as yet unclassified
getTracklist

	^ self tracklist ifNil:
		[
			| request tracks |
			request := MBrequest new getDetailsForA: (self class entityName) withMBID: (self mbid) about: 'recordings'.
			tracks := OrderedCollection new.
			request tagsNamed: #recording do: [:each | 
				tracks add: (each firstTagNamed: #title) contentString].
			self
				tracklist: tracks;
				tracklist]