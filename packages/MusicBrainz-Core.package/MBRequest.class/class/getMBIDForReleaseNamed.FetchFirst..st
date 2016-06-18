request
getMBIDForReleaseNamed: aString FetchFirst: anInteger

	| request mbids count |
	
	request := MBRequest sendQuery: aString forEntity: 'release'.
	mbids := OrderedCollection new.
	count := 0.
	request tagsNamed: #release do: [:each | 
		(count < anInteger)
		ifTrue: [
			mbids add: (each attributeAt: 'id').
			count := count+1]
		].
	^ mbids