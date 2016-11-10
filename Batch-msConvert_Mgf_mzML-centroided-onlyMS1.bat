REM ##### Batch conversion with msConvert (MS1 mzML and mgf) #####
REM 
REM DESCRIPTION:
REM   This batch file convert .raw files within the same directory into 
REM      (1) ..\mzML_centroided_onlyMS1 directory as mzML files (only MS1, centroided) and
REM      (2) ..\mgf directory as mgf files (only MS1, centroided)
REM
REM USAGE:
REM   Place this batch file in the directory that contains the target raw files.
REM   Double click this .bat file.
REM 
REM 2016.10.22 K.Ohgane

REM Set current directory to the directory of this file
cd /d %~dp0

REM Make output directory
REM mkdir ..\mgf
REM mkdir ..\mzML_centroided_onlyMS1

REM Convert .raw files to mzML (default) with options
"C:\Program Files\ProteoWizard\ProteoWizard 3.0.8725\msconvert" *.raw -o ..\mzML_centroided_onlyMS1 --32 --zlib --filter "peakPicking true" --filter "msLevel 1" --filter "scanTime [1080,4800]"
REM Convert .raw files to mgf
"C:\Program Files\ProteoWizard\ProteoWizard 3.0.8725\msconvert" *.raw --mgf -o ..\mgf --32 --zlib --filter "peakPicking true" --filter "msLevel 2" --filter "scanTime [1080,4800]"