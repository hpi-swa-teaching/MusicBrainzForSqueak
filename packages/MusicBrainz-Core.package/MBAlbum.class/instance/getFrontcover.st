as yet unclassified
getFrontcover

	^ self cover ifNil:
		[self cover: (MBRequest getFrontcoverFor: self mbid size: #small).
		self cover
		]