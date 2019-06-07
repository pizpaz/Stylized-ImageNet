#!/usr/bin/env bash

export CUDA_VISIBLE_DEVICES="2"

# download models
#models/download_models.sh

# convert models
#python3 torch_to_pytorch.py --model models/vgg_normalised.t7
#python3 torch_to_pytorch.py --model models/decoder.t7

# preprocess paintings
#python3 preprocess_style_imgs.py

# preprocess ImageNet (=create Stylized-ImageNet)
#python3 preprocess_imagenet.py --batch-size 256 --workers 20 --print-freq 1
python3 preprocess_imagenet.py --batch-size 128 --workers 20 --print-freq 1 --img_preprocess "center_crop"
