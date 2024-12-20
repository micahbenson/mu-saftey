#!/bin/bash -l

#$ -N i2p_generate           # Give job a name
#$ -j y               # Merge the error and output streams into a single file
#$ -t 1
#$ -l gpus=1
#$ -l gpu_c=8.0

echo "SGE_TASK_ID is $SGE_TASK_ID"

conda activate ldms

python eval-scripts/generate-images-jobs.py \
--prompts_path prompts/unsafe-prompts.csv \
--save_path results/i2p/ \
--model_name van-gogh-esd \
--id $SGE_TASK_ID \
--device cuda:0 \
--num_samples 1 

echo "Done" 