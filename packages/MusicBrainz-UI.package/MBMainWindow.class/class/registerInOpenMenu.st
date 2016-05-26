as yet unclassified
registerInOpenMenu
	(TheWorldMenu respondsTo: #registerOpenCommand:) ifTrue: [
		TheWorldMenu unregisterOpenCommand: 'MusicBrainz'.
		TheWorldMenu registerOpenCommand: {'MusicBrainz'. {self. #open}}]
		