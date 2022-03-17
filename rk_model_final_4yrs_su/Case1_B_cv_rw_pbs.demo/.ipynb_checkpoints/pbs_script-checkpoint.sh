#!/bin/bash -login

#PBS -j oe
#PBS -m ae
#PBS -q all
#PBS -l nodes=1:ppn=8
#PBS -l walltime=00:10:00
#PBS -l mem=1gb
#PBS -W x=PARTITION:isu


# Change to my work dir
cd $WM_PROJECT_DIR

# Load modules
module load GCCcore/.11.2.0 Python/3.9.6
module load GCC/10.2.0  OpenMPI/4.0.5 SciPy-bundle/2020.11

 
# Run the ats model command within the loop
singularity exec /bigwork/nhgjrabl/Singularity/ats_pest_final_2.sif pestpp-glm Case1_B_cv_cf_v1_rw.pst &>pest_out.log