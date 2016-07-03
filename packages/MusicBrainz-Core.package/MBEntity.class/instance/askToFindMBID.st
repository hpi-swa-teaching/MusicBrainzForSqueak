accessing
askToFindMBID
	(self mbid = '')
		ifTrue: [
			(UIManager default confirm: 'There''s no MBID set for this entity.' trueChoice: 'Find it! Now!' falseChoice: 'Sorry, not now.')
				ifTrue: [^ self findMBID]
				ifFalse: [^ '']].