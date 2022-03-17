#!/bin/bash -l

#SBATCH --job-name=Case5_testatsmodelcmd_isu
#SBATCH --time=1:20:00
#SBATCH --cpus-per-task=32
#SBATCH --partition=isu
#SBATCH --output Case5_atsmodelcmd_isu%j.out
#SBATCH --error Case5_atsmodelcmd__isu%j.err
 
# Change to my work dir
cd $SLURM_SUBMIT_DIR

# Load modules
module load GCCcore/.11.2.0 Python/3.9.6
module load GCC/10.2.0  OpenMPI/4.0.5 SciPy-bundle/2020.11

 
# Run the ats model command within the loop
srun python3 ats_modelcmd_cl.py &>ats_modelcmd_cl.log
