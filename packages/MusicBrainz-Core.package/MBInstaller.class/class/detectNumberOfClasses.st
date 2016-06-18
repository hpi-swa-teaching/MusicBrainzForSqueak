installing
detectNumberOfClasses
	^ MBInstaller packages detectSum: [ :each | (PackageInfo default packageName: each) classes size]