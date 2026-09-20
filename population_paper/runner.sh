#!/bin/bash

#SBATCH --job-name=Es442M1640
#SBATCH --time=2-0:00:00
#SBATCH --partition=gpu-shared
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --account=umn131
#SBATCH --mem=90G
#SBATCH --gpus=1
#SBATCH --export=ALL
#SBATCH --output=Es442M1640.out

module load python
module add gpu/0.17.3b
module add gcc/10.2.0
module add cuda/11.2.2
module load gpu/0.17.3b
module load gcc/10.2.0
module load cuda/11.2.2

# conda activate final_run_1
python runner.py evidence --gpu 0
