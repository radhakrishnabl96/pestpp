#!/bin/bash -l
#SBATCH --job-name=pest_case2
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem-per-cpu=4G
#SBATCH --time=199:00:00
#SBATCH --partition=amo,enos
#SBATCH --constraint=[skylake|haswell]
#SBATCH --output pest_case2_rw_%j.out
#SBATCH --error pest_case2_rw_%j.err
 
# Change to my work dir
cd $SLURM_SUBMIT_DIR

# Load modules
module load GCC/10.2.0  OpenMPI/4.0.5 SciPy-bundle/2020.11
 
# Run the ats model command within the loop
export OMPI_MCA_btl_openib_allow_ib=1
srun singularity exec /bigwork/nhgjrabl/Singularity/ats_pest_final_2.sif pestpp-glm Case1_B_cv_cf_v1_rw.pst &>pest_out.log
