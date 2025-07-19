#!/bin/bash -l

#$ -N i2p_generate           # Give job a name
#$ -j y               # Merge the error and output streams into a single file
#$ -t 21-4702:20            # Do batch job submission
#$ -l gpus=1
#$ -l gpu_c=8.0
#$ -o logs/output/
#$ -e logs/error/

echo "SGE_TASK_ID is $SGE_TASK_ID"

conda activate ldms

python eval-scripts/generate-images-jobs.py \
--prompts_path prompts/unsafe-prompts.csv \
--save_path results/i2p/test3 \
--model_name compvis-nsfw-mask-method_full-lr_1e-05 \
--id $SGE_TASK_ID \
--device cuda:0 \
--num_samples 1 

echo "Done" 