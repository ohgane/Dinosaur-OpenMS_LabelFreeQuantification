# Dinosaur-OpenMS_LabelFreeQuantification
[Proteomics] Utility scripts for analysis of label-free quantification data obtained on LTQ-Orbitrap with Dinosaur peak picker, SearchGUI/PeptideShaker, and OpenMS/TOPPAS.

## Description
   For label-free quantification, I generally use SearchGUI and PeptideShaker for MS/MS identification, as these open-source software allows the use of multiple search engines (I prefer to use X!Tandem, but other search engines including OMSSA, MSGFplus etc. are also aavailable). For SearchGUI, I use MGF files as input files (RAW files can also be converted to MGF within SearchGUI, but I have not tested this).
   For quantification of peptide peaks (features), my favorite tool is Dinosaur feature finder. From my (limited) experience, Dnosaur out performed XCMS (as an R package) centwave feature finder with regard to sensitivity and accuracy (especially, charge state recognition was highly reliable compared to CAMERA package within R).
   To combine the identification result and the quantification result, we can use OpenMS/TOPPAS workflow. Dinosaur can export the detected features as a tsv (tab-separated) files compatible with OpenMS/TOPPAS. The identification result can also be exported to mzIdentML format from PeptideShaker. Thus, we can use OpenMS/TOPPAS to combine (i.e., map) the quantification result with the identified peptides.
   The output from OpenMS/TOPPAS would be peptide(protein)-quantification list and "consensus feature" file, which contains PSMs (peptide spectrum matches) with m/z, charge, rt, and quantity etc. So, to simply compare peptide/protein abundance, we can use the former list. If more detailed information is needed (e.g., rt and m/z), we need to process/summarize consensus feature data as this contains multiple identifications for a single peptide (mutiple MS/MS spectrum v.s. peptide matches, with different charge state and different rt).

## Usage
The following is a step-by-step guide to perform a label-free quantification with Dinosaur, SearchGUI/PeptideShaker, and OpenMS/TOPPAS. I use these scripts on a MacBookPro with OS X 10.10.5 (Yosemite) except for step 1, which is performed on a Windows 7 installed with Thermo Xcalibur softwares.

### Step 1: Converting Thermo RAW files into MGF files (MS2) and mzML files (LC-MS1) with msConvert


### Step 2: Peptide/Protein identification by SearchGUI/PeptideShaker and export to mzIdentML format

### Step 3: Peak picking (feature detection) by Dinosaur

### Step 4: Add quantification to the identification list (combining the identification result and the peak picking result)

### (Optional) Step 5: Visualization of the results by R


## References
* Vaudel M, Barsnes H, Berven FS, Sickmann A & Martens L (2011) SearchGUI: An open-source graphical user interface for simultaneous OMSSA and X!Tandem searches. Proteomics 11: 996–999
* Vaudel M, Burkhart JM, Zahedi RP, Oveland E, Berven FS, Sickmann A, Martens L & Barsnes H (2015) PeptideShaker enables reanalysis of MS-derived proteomics data sets. Nat Biotechnol 33: 22–24
* Teleman J, Chawade A, Sandin M, Levander F & Malmström J (2016) Dinosaur: A Refined Open-Source Peptide MS Feature Detector. J Proteome Res 15: 2143–2151
* Bertsch A, Gröpl C, Reinert K & Kohlbacher O (2011) OpenMS and TOPP: open source software for LC-MS data analysis. Methods Mol. Biol. 696: 353–367
* Junker J, Bielow C, Bertsch A, Sturm M, Reinert K & Kohlbacher O (2012) TOPPAS: a graphical workflow editor for the analysis of high-throughput proteomics data. - PubMed - NCBI. J Proteome Res 11: 3914–3920
* Röst HL, Sachsenberg T, Aiche S, Bielow C, Weisser H, Aicheler F, Andreotti S, Ehrlich H-C, Gutenbrunner P, Kenar E, Liang X, Nahnsen S, Nilse L, Pfeuffer J, Rosenberger G, Rurik M, Schmitt U, Veit J, Walzer M, Wojnar D, et al (2016) OpenMS: a flexible open-source software platform for mass spectrometry data analysis. Nat Methods 13: 741–748
