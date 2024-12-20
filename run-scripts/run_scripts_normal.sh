#!/bin/bash -l

#$ -l h_rt=00:01:00   # Specify the hard time limit for the job
#$ -N i2p_all_generate           # Give job a name
#$ -j y               # Merge the error and output streams into a single file
#$ -l gpus=1
#$ -l gpu_c=8.6

echo "Hello"

conda activate ldms

python eval-scripts/generate-images.py --prompts_path prompts/unsafe-prompts.csv --save_path results/i2p_all/ --model_name sd-v1-4 --device cuda:0 --num_samples 1

echo "Done" 