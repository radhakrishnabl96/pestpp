#!/bin/bash -l
#SBATCH --job-name=pest_case1_simple_2
#SBATCH --cpus-per-task=32
#SBATCH --output pest_case1_simple_2%j.out
#SBATCH --error pest_case1_simple_2%j.err
 
# Change to my work dir
cd $SLURM_SUBMIT_DIR

# Load modules
module load GCC/10.2.0 OpenMPI/4.0.5 SciPy-bundle/2020.11
 
# Running PEST
export OMPI_MCA_btl_openib_allow_ib=1

srun singularity exec /bigwork/nhgjrabl/Singularity/ats_pest_final_2.sif pestpp-glm Case1_B_cv_cf_v1_rw.pst &> pest_out.log 
