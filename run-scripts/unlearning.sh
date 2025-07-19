#!/bin/bash -l

#$ -N q16           # Give job a name
#$ -j y               # Merge the error and output streams into a single file
#$ -o logs/output/
#$ -e logs/error/

conda activate ldms 

#this is correct
export PYTHONPATH=/projectnb/compvision/mu-safety/mu-saftey:$PYTHONPATH


python train-scripts/generate_mask.py \
--ckpt_path 'models/ldm/nsfw/nsfw.pt' \
--vg True \
--device '0'

python train-scripts/vg_removal.py \
--train_method 'noxattn' \
--mask_path 'mask/vg_0.5.pt' \
--config_path 'models/ldm/nsfw/nsfw.pt'
--device '0'