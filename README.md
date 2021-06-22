1. Download the two code files in this repository to your computer. These will be our first SLURM job.
2. Request your account and make sure you can login to the Tigerfish cluster, as described [here.](https://www.lsuhsc.edu/admin/it/hpc/information.aspx)
3. We need to get our two files from your computer to the cluster. Either use cd to navigate to their directory and use this command:
>scp test.py firstjob.slurm [username]@tigerfish.lsuhsc.edu<
Make sure you replace [username] with your own login for the cluster. It will prompt you for your password, then transfer both of these files to your home directory on Tigerfish.
4. Now login to the cluster using the ssh command. We can use the ls command to confirm that our files were transferred successfully.
5. To run our file, we need to use the sbatch command on our .slurm file.
>sbatch firstjob.slurm
This will run our slurm file and put our job through the scheduler, which will allocate it to a node that will then perform the computations. As stated on the [LSUHSC HPC information page](https://www.lsuhsc.edu/admin/it/hpc/information.aspx), we **must** use SLURM to run jobs. Otherwise, all jobs will run on the computationally small Tigerfish node, and performance of the clusterfor all users will be severely diminished.  

*Inspiration for this first SLURM job walkthrough taken from Princeton University's similar guide, HPC beginning workshop, which is located [here.](https://github.com/PrincetonUniversity/hpc_beginning_workshop)*
