building
setIcon: anMBEntity 
	""
	"^ PNGReadWriter formFromFileNamed:
	'Z:\Daten\Semester4\SWT\SWT2016.app\Contents\Resources\albums\blankCover_250.png' "
	""
	anMBEntity hasEssentialMetadata
		ifFalse: [^ UiSilkIcons errorIcon].
	^ nil
