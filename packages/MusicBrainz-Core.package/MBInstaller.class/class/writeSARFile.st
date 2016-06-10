as yet unclassified
writeSARFile
|packages folder zip mczStream workingCopy version|
folder := 'albums'.

zip := ZipArchive new.

packages := #('MusicBrainz-Core' 'MusicBrainz-UI').
mczStream := RWBinaryOrTextStream on: (String new: 10000).
workingCopy := MCWorkingCopy forPackage: (MCPackage new name: packages first).
version := workingCopy newVersion fileOutOn: mczStream.
(zip addString: mczStream contents as: (packages first), '.mcz') desiredCompressionLevel: 0.

mczStream := RWBinaryOrTextStream on: (String new: 10000).
workingCopy := MCWorkingCopy forPackage: (MCPackage new name: packages second).
version := workingCopy newVersion fileOutOn: mczStream.
(zip addString: mczStream contents as: (packages second), '.mcz') desiredCompressionLevel: 0.

zip addTree: Smalltalk imagePath match: [:e | e fullName startsWith:
    Smalltalk imagePath , FileDirectory slash , folder].
zip addString:  'self fileInMonticelloZipVersionNamed: ''' , (packages first), '.mcz''.
self fileInMonticelloZipVersionNamed: ''' , (packages second), '.mcz''.
(self membersMatching: ''' , folder , FileDirectory slash , '*.*'') do: [ :f | self
    extractMember: f].' as: 'install/preamble'.
zip writeToFileNamed: 'MusicBrainz' , '.sar'.
