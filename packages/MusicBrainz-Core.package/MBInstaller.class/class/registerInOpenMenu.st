installing
registerInOpenMenu
	(TheWorldMenu respondsTo: #registerOpenCommand:) ifTrue: [
		TheWorldMenu unregisterOpenCommand: 'MusicBrainz'.
		TheWorldMenu registerOpenCommand: {'MusicBrainz'. {MBMainWindow. #open}}]