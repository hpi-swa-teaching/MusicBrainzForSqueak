building
setIcon: anMBEntity 
	[anMBEntity hasEssentialMetadata
		ifFalse: [^ self class errorIcon]]
	on: Error 
	do: [].
	^ nil
