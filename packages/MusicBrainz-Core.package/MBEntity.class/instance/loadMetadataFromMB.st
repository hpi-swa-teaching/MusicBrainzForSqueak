loadFromMB
loadMetadataFromMB
	#('Artist' 'Title') do: [:each |
		self metadata at: each ifAbsent: [
			self loadAndSetFromMB: each]]