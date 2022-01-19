import os
import subprocess
import shutil
import fileinput
import time

# Removing the previously generated output file
os.system("rk_model_glm_obs_data.dat")

# Running ats command
os.system("ats --xml_file=rk_model_glm_input.xml")


# Generating a suitable observation file with no hash!
remove_hashs = ['#','"']

old_file_name = 'observations.dat'
new_file_name = 'rk_model_glm_obs_data.dat'
with open(f'{old_file_name}') as oldfile, open(f'{new_file_name}', 'w') as newfile:
            for line in oldfile:
                if not any(remove_hash in line for remove_hash in remove_hashs):
                    newfile.write(line)


                    
# Remove all the unnescessary output files expect the .dat file
os.system("rm -rf *.xmf *.h5 observations.dat")