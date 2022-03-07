#!/bin/bash -l

#SBATCH --job-name=pest_case1
#SBATCH --time=4:00:00
#SBATCH --cpus-per-task=32
#SBATCH --output pest_case2_rw_%j.out

 
# Change to my work dir
cd $SLURM_SUBMIT_DIR

# Load modules
module load GCCcore/.11.2.0 Python/3.9.6
module load GCC/10.2.0  OpenMPI/4.0.5 SciPy-bundle/2020.11

export OMPI_MCA_btl_openib_allow_ib=1
 
# Run the ats model command within the loop
srun singularity exec /bigwork/nhgjrabl/Singularity/ats_pest_final_2.sif pestpp-glm Case1_B_cv_cf_v1_rw.pst &>pest_out.log
