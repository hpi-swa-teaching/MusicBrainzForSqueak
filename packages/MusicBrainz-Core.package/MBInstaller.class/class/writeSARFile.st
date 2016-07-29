exporting
writeSARFile
|packages folder zip mczStream workingCopy version|
folder := 'albums'.

zip := ZipArchive new.

packages := #( 'MusicBrainz-Libraries' 'MusicBrainz-Core' 'MusicBrainz-UI' 'MusicBrainz-Tests' 'BaselineOfMusicBrainzForSqueak').
packages do: [ :package | 
mczStream := RWBinaryOrTextStream on: (String new: 10000).
workingCopy := MCWorkingCopy forPackage: (MCPackage new name: package).
version := workingCopy newVersion fileOutOn: mczStream.
(zip addString: mczStream contents as: package, '.mcz') desiredCompressionLevel: 0].

zip addTree: Smalltalk imagePath match: [:e | e fullName startsWith:
    Smalltalk imagePath , FileDirectory slash , folder].
zip addString:  'self fileInMonticelloZipVersionNamed: ''' , (packages first), '.mcz''.
self fileInMonticelloZipVersionNamed: ''' , (packages second), '.mcz''.
self fileInMonticelloZipVersionNamed: ''' , (packages third), '.mcz''.
self fileInMonticelloZipVersionNamed: ''' , (packages fourth), '.mcz''.
self fileInMonticelloZipVersionNamed: ''' , (packages fifth), '.mcz''.
(self membersMatching: ''' , folder , FileDirectory slash , '*.*'') do: [ :f | self
    extractMember: f].' as: 'install/preamble'.
zip writeToFileNamed: 'MusicBrainz' , '.sar'
