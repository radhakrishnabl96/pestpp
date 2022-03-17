#!/bin/bash -l
#SBATCH --job-name=pest_case1
#SBATCH --nodes=1
#SBATCH --cpus-per-task=32
#SBATCH --mem-per-cpu=4G
#SBATCH --time=4:00:00
##SBATCH --partition=amo,enos
##SBATCH --constraint=[skylake|haswell]
#SBATCH --output pest_case1_rw_%j.out
#SBATCH --error pest_case1_rw_%j.err
 
# Change to my work dir
cd $SLURM_SUBMIT_DIR

# Load modules
module load GCC/10.2.0 OpenMPI/4.0.5 SciPy-bundle/2020.11
 
# Run the ats model command within the loop
cd /bigwork/nhgjrabl/Simulations/pestpp/rk_model_final_4yrs/MYTEST/Case5_I_cv_rw_cl.demo
export OMPI_MCA_btl_openib_allow_ib=1
mpirun singularity exec /bigwork/nhgjrabl/Singularity/ats_pest_final_2.sif pestpp-glm Case5_I_cv_cf_v1_rw.pst > pest_out.log 2>&1
