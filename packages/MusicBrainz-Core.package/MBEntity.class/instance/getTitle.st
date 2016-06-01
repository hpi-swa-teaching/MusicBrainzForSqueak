accessing
getTitle

	^ self metadata at: #Title ifAbsent:
		[
			| request |
			request := MBRequest getDetailsForA: (self class entityName) withMBID: (self mbid).
			self
				title: (request firstTagNamed: #title) contentString;
				title]