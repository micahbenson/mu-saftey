#!/bin/bash -l

#$ -N i2p_generate           # Give job a name
#$ -j y               # Merge the error and output streams into a single file
#$ -t 1-4702:20             # Do batch job submission
#$ -l gpus=1
#$ -l gpu_c=8.0
#$ -o logs/output/
#$ -e logs/error/

echo "SGE_TASK_ID is $SGE_TASK_ID"

conda activate esd

python erasing/generate-images-jobs.py \
--prompts_path prompts/unsafe-prompts.csv \
--save_path results/i2p/test/ \
--model_name '/projectnb/compvision/mu-safety/mu-saftey/models/compvis-vg-mask-method_full-lr_1e-05/compvis-vg-mask-method_full-lr_1e-05.pt' \
--id 1 \
--device cuda:0 \
--num_samples 1 

echo "Done" 