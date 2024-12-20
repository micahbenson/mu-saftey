#!/bin/bash -l

#$ -N nn           # Give job a name
#$ -j y               # Merge the error and output streams into a single file
#$ -o logs/output/
#$ -e logs/error/

conda activate ldms 

#need to edit python script to read file paths of all images in image folder 
python eval-scripts/nudenet-classes.py \
--folder ./results/i2p/esd-both \
--prompts_path ./prompts/unsafe-prompts.csv \
--save_path ./eval/nudenet/esd-both \
--threshold 0.5
