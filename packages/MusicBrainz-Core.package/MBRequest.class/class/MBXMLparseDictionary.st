dictionary
MBXMLparseDictionary

	^ Dictionary newFrom: {
		#'Artist' -> [:xml | |artists| artists := ''. xml tagsNamed: #artist do: [:artistData | artists := artists, (artistData firstTagNamed: #name) contentString, '/']. artists allButLast].
		#'Title' -> [:xml | (xml firstTagNamed: #title) contentString].
		#'Length' -> [:xml | (xml firstTagNamed: #length) contentString].
		#'Album' -> [:xml | nil].
		#'Label' -> [:xml | |labels| labels := ''. xml tagsNamed: #label do: [:labelData | labels := labels, (labelData firstTagNamed: #name) contentString,  '/']. labels allButLast].
		#'Media' -> [:xml | |media| media := ''. xml tagsNamed: #medium do: [:mediumData | media := media, (mediumData firstTagNamed: #format) contentString, '/']. media allButLast].
		#'Tracks' -> [:xml | |tracks| tracks := OrderedCollection new. xml tagsNamed: #recording do: [:each | tracks add: (MBTrack new setMBID: (each attributeAt: #id))]. tracks].
		#'Track Number' -> [:xml | nil].
		#'Barcode' -> [:xml | (xml firstTagNamed: #barcode) contentString].
		#'Language' -> [:xml | (xml firstTagNamed: #language) contentString].
		#'Country' -> [:xml | (xml firstTagNamed: #country) contentString].
		#'Year' -> [:xml | (xml firstTagNamed: #date) contentString copyFrom: 1 to: 4]
	}