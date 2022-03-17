#!/bin/bash -l
#SBATCH --job-name=test_ats_pest
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=40
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks-per-core=1
#SBATCH --mem-per-cpu=2G
#SBATCH --time=1:00:00
#SBATCH --partition=amo
#SBATCH --constraint=[skylake|haswell]
#SBATCH --mail-user=radhakrishna@hydromech.uni-hannover.de
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --output test_ats_pest-job_%j.out
#SBATCH --error test_ats_pest-job_%j.err
 
# Load modules
 
# Run ats
srun singularity exec /bigwork/nhgjrabl/Singularity/ats_pest_final.sif pest Case1_B_cv_cf_v1.pst
