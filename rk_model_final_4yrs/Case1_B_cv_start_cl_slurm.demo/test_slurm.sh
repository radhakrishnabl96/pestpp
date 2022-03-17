#!/bin/bash -l
#SBATCH --job-name=test_ats_modelcmd
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks-per-core=1
#SBATCH --mem-per-cpu=2G
#SBATCH --time=00:20:00
#SBATCH --partition=enos,amo
#SBATCH --constraint=[skylake|haswell]
#SBATCH --mail-user=radhakrishna@hydromech.uni-hannover.de
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --output test_serial-job_%j.out
#SBATCH --error test_serial-job_%j.err
 
# Change to my work dir
cd $SLURM_SUBMIT_DIR
 
# Load modules

 
# Start octave
srun python3 ats_modelcmd_cl.py
