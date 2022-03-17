#!/bin/bash -l

#SBATCH --job-name=Case5_testats
#SBATCH --time=2:00:00
#SBATCH --cpus-per-task=32
#SBATCH --output Case5_testats_%j.out
#SBATCH --error Case5_testats__%j.err
 
# Change to my work dir
cd $SLURM_SUBMIT_DIR/ats_test_cl.demo

# Load modules

 
# Run the ats model command within the loop
srun singularity exec /bigwork/nhgjrabl/Singularity/ats_pest_final_2.sif ats --xml_file=../Case5_I_cv.xml &>out.log
