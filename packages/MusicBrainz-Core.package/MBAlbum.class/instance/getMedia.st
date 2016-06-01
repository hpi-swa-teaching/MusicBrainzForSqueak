as yet unclassified
getMedia

	^ self metadata at: #Media ifAbsent:
		[
		| request media |
		request := MBRequest getDetailsForA: (self class entityName) withMBID: (self mbid) about: 'media'.
		media := OrderedCollection new.
		[request tagsNamed: #medium do: [:mediumData | media add: (mediumData firstTagNamed: #format) contentString].]
			on: MessageNotUnderstood
			do: [media := OrderedCollection new].
		self
			media: media;
			media ]