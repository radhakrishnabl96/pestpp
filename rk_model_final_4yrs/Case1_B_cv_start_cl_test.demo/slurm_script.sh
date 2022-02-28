#!/bin/bash -l
#SBATCH --job-name=test_ats_all_partitions
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks-per-core=1
#SBATCH --mem-per-cpu=2G
#SBATCH --time=00:20:00
#SBATCH --partition=amo,stahl,gih,pcikoe,iazd,taurus,isd,iqo,enos,tnt,iwes
#SBATCH --constraint=[skylake|haswell]
#SBATCH --mail-user=radhakrishna@hydromech.uni-hannover.de
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --output test_ats_all_partitions_%j.out
#SBATCH --error test_ats_all_partitions_%j.err
 
# Change to my work dir
cd $SLURM_SUBMIT_DIR
 
 
# Run the ats model command within the loop
srun python3 ats_modelcmd_cl.py >ats_model_cmd_out_2.log
