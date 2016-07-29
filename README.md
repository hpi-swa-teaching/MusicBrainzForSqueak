# SWT16-Project-12 [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-12.svg?branch=master)](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-12)

#Installation instructions:
1. Drag and Drop the .sar-File we will deploy into your image, then click "install sar file". If you don't want to wait for a release, just execute this in your workspace:
  ```
  Metacello new
  
    baseline: 'MusicBrainzForSqueak';
  
    repository: 'github://HPI-SWA-Teaching/SWT16-Project-12:master/packages';
  
    onConflict: [:ex | ex allow];
  
    load
  ```
  and ask us for the default cover images.
  
  **Hint: Tests will not be included in this download!**
2. Execute the command: 
  ```
  MBInstaller installMusicBrainz
  ``` 
  in your workspace.
3. No third step as MusicBrainz opens automatically after installation!
