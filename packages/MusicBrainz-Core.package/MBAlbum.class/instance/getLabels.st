as yet unclassified
getLabels

	^ self metadata at: #Label ifAbsent:
		[
		| request labels |
		request := MBRequest browseFor: 'label' by: (self class entityName) withMBID: (self mbid).
		labels := OrderedCollection new.
		request tagsNamed: #label do: [:labelData | labels add: (labelData firstTagNamed: #name) contentString].
		self
			labels: labels;
			labels ]