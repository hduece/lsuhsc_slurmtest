#!/bin/bash
#SBATCH --job-name=firstjob            # create a short name for your job
#SBATCH --nodes=1                      # number of nodes for your task to run on
#SBATCH --cpus-per-task=1              # number of CPU cores per task. 
#SBATCH --mem-per-cpu=4G               # memory per cpu-core (4G is default)
#SBATCH --time=00-00:01:00             # total run time limit (DD-HH:MM:SS)

purge module                           #good practice- ensures you are running your code on a clean slate
#Insert any modules you need here.
python3 test.py                        #tells the scheduler what code you want to run.
