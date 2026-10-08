NucBRITE_MATLAB_Code
This repository is to support the following paper : Cawte et al - Nuclear-BRITE: an enhanced MS2 system for live-cell imaging of nuclear RNAs https://doi.org/10.64898/2026.07.07.736975

To use this analysis pipeline you must have: TrackMate installed in Fiji to analyse the data as desired and @msdanalyzer installed in Matlab (supporting documentation found here - https://tinevez.github.io/msdanalyzer/)

Once installed, you can run Trackmate on individual cropped cells as desired and output the data to separate folders. Then in Matlab, the "Import" scripts can be used as needed, depending on your source/analysis (i.e. MSD/tracking, intensity quantification etc.) These imports will import separate files and treat them independently as individually cropped cells.


ImportInt for Xist intensity quantification (requires Trackmate Spots .csv output)
ImportTracks for MSD and NND over time analysis (requires Trackmate simple .xml output)
Once the cell arrays are imported into Matlab, you can then run the "Quant" scripts to produce the desired quantification.


Dapp_Multi calculates apparent diffusion coefficients from MSDs individually for each cell
Foci_Quant quantifies the number of foci, NND between foci and their volume.

end
