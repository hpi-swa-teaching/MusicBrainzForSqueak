as yet unclassified
getFrontcover

	^ self cover ifNil:
		[self cover: (MBRequest new getFrontcoverFor: self mbid).
		self cover
		]