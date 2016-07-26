building
setIcon: anMBEntity 
	[anMBEntity hasEssentialMetadata
		ifFalse: [^ UiSilkIcons errorIcon]]
	on: Error 
	do: [].
	^ nil
