#!/bin/bash -l

#$ -N q16           # Give job a name
#$ -j y               # Merge the error and output streams into a single file
#$ -o logs/output/
#$ -e logs/error/

conda activate q16

export PYTHONPATH=/projectnb/compvision/mu-safety/mu-saftey/Q16:$PYTHONPATH

python Q16/main/clip_classifier/classify/inference_images.py \
--input_folder ./results/i2p/sd-v1-4 \
--output_folder ./eval/q16/sd-v1-4
