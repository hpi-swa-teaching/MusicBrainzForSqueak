installing
detectLinesOfCode
	^ MBInstaller packages detectSum: [ :each | (PackageInfo default packageName: each) classes detectSum: [:class | class linesOfCode]]