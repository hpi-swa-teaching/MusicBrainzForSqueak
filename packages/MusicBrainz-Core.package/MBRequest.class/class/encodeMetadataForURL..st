request
encodeMetadataForURL: aString

	| encodedValue |
	encodedValue := aString asString encodeForHTTP.
	encodedValue := encodedValue copyReplaceAll: '%00' with: ''.
	encodedValue := encodedValue copyReplaceAll: '%2F' with: '%20'.
	encodedValue := encodedValue copyReplaceAll: '%3F' with: '%20'.
	^ encodedValue