dictionary
MBXMLparseDictionary

	^ Dictionary newFrom: {
		#'Artist' -> [:xml | self xmlParseCollectTagsNamed: #artist containing: #name in: xml].
		#'Title' -> [:xml | self xmlParseFirstTagNamed: #title in: xml].
		#'Length' -> [:xml | self xmlParseFirstTagNamed: #length in: xml].
		#'Album' -> [:xml | nil].
		#'Label' -> [:xml | self xmlParseCollectTagsNamed: #label containing: #name in: xml].
		#'Media' -> [:xml | self xmlParseCollectTagsNamed: #medium containing: #format in: xml].
		#'Tracks' -> [:xml | self xmlParseTracklistIn: xml].
		#'Track Number' -> [:xml | nil].
		#'Barcode' -> [:xml | self xmlParseFirstTagNamed: #barcode in: xml].
		#'Language' -> [:xml | self xmlParseFirstTagNamed:  #language in: xml].
		#'Country' -> [:xml | self xmlParseFirstTagNamed: #country in: xml].
		#'Year' -> [:xml | self xmlParseYearIn: xml]
	}