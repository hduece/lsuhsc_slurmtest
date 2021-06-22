#!/bin/bash
#SBATCH --job-name=matinv        # create a short name for your job
#SBATCH --nodes=1                # node count
#SBATCH --array=1-10
#SBATCH --cpus-per-task=1        # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=4G         # memory per cpu-core (4G is default)
#SBATCH --time=00:01:00          # total run time limit (HH:MM:SS)
#SBATCH --mail-type=ALL          # send email
#SBATCH --mail-user=hdusab@lsuhsc.edu

srun python3 test.py $SLURM_ARRAY_TASK_ID
