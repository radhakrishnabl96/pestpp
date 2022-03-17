#!/bin/bash -l
#SBATCH --job-name=pest_case1_org
#SBATCH --nodes=1
#SBATCH --cpus-per-task=32
#SBATCH --mem-per-cpu=3G
#SBATCH --time=10:00:00
##SBATCH --partition=amo,enos
##SBATCH --constraint=[skylake|haswell]
#SBATCH --output pest_case1_org_%j.out
#SBATCH --error pest_case1_org_%j.err
 
# Change to my work dir
cd $SLURM_SUBMIT_DIR

# Load modules
module load GCC/10.2.0 OpenMPI/4.0.5 SciPy-bundle/2020.11

export OMPI_MCA_btl_openib_allow_ib=1
# Running PEST
mpirun singularity exec /bigwork/nhgjrabl/Singularity/ats_pest_final_2.sif pestpp-glm Case1_B_cv_cf_v1_rw.pst &> pest_out.log 
