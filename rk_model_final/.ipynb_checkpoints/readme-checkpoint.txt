# Steps to execute for running PEST with ATS

1. Prepare the xml file - Execute the file is ats_rk/... Check the outputs and compare with the simulated values.

2. Compare the xml file with an existing xml file which is already linked with PEST. (in vs code)

3. Duplicate an pestpp_file_creation jupyter notebook and go through further instructions

4. Copy the compared xml file, and other example pest input files into the directory

6. Change the control file name to the required file name.

7. Suppose the parameters are the same, then you can copy and rename the template file. Compare the template file with the input xml file and make any relevant changes (in vs code)

8. The observation instruction file (...obs_data.dat.ins) always remains the same (for now), therefore copy and rename the file --> Skip the observation file and instruction file preparation

9. Duplicate a test xml file and change only the ../data_input --> ../../data_input

10. Within the ats_modelcmd.py, change the file name!

11. Once the pest control file is changed, please check the file structure once more to ensure that all of the files are present and looks good.

12.

