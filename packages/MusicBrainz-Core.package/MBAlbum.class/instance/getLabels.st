as yet unclassified
getLabels

	^ self labels ifNil:
		[
		| request labels |
		request := MBRequest browseFor: 'label' by: (self class entityName) withMBID: (self mbid).
		labels := OrderedCollection new.
		request tagsNamed: #label do: [:labelData | labels add: (labelData firstTagNamed: #name) contentString].
		self
			labels: labels;
			labels ]