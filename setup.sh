#!/bin/bash
# Step 1: Navigate to workspace
cd workspace/

# Step 2: Clone the ComfyUI repo (native node version)
git clone https://github.com/comfyanonymous/ComfyUI.git
cd ComfyUI

# Step 3: Install Python dependencies
pip install -r requirements.txt

# Step 4: Install ComfyUI Manager (as custom node)
cd custom_nodes
git clone https://github.com/Comfy-Org/ComfyUI-Manager.git
cd ..


## Text Encoder
cd models/text_encoder
wget https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/text_encoders/umt5_xxl_fp8_e4m3fn_scaled.safetensors
cd ../..

## VAE Model
cd models/vae
wget https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors
cd ../..

#CLIP
cd models/clip
wget https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/clip_vision/clip_vision_h.safetensors
cd ../..


cd models/diffusers
wget https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/diffusion_models/wan2.1_i2v_480p_14B_fp8_scaled.safetensors
cd ../..

