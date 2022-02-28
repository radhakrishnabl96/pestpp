#!/bin/bash -l
#SBATCH --job-name=pest_case1
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks-per-core=1
#SBATCH --mem-per-cpu=4G
#SBATCH --time=199:00:00
#SBATCH --partition=amo,enos
#SBATCH --constraint=[skylake|haswell]
#SBATCH --output pest_case1_rw_%j.out
#SBATCH --error pest_case1_rw_%j.err
 
# Change to my work dir
cd $SLURM_SUBMIT_DIR

# Bind your OpenMP threads
#export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
# Intel specific environment variables
#export KMP_AFFINITY=verbose,granularity=core,compact,1
#export KMP_STACKSIZE=64m


# Load modules
module load GCCcore/.11.2.0 Python/3.9.6
module load GCC/10.2.0  OpenMPI/4.0.5 SciPy-bundle/2020.11

#export OMPI_MCA_btl_openib_allow_ib=1
 
# Run the ats model command within the loop
srun singularity exec /bigwork/nhgjrabl/Singularity/ats_pest_final_2.sif pestpp-glm Case1_B_cv_cf_v1_rw.pst &>pest_out.log
