loadFromMB
loadLabelsFromMB
	
	| request labels |
	self mbid ifNil: 
		[^ self error: 'No MBID set. Can''t load labels for album.'].

	request := MBRequest browseFor: 'label' by: (self class entityName) withMBID: (self mbid).
	labels := ''.
	request tagsNamed: #label do: [:labelData | labels := labels,  '/', (labelData firstTagNamed: #name) contentString].
	(labels size > 0)
		ifTrue: [^ labels allButFirst].
	^ labels