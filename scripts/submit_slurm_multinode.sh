sbatch --nodes <n> --exclusive -J <job-name> --wrap "srun --task-epilog $PWD/epilog.sh $PWD/launch_pcluster.sh"
