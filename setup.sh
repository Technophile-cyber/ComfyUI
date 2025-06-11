#!/bin/bash

# Step 1: Navigate to workspace
cd ~/workspace

# Step 2: Clone the ComfyUI repo (native node version)
git clone https://github.com/comfyanonymous/ComfyUI.git
cd ComfyUI

# Step 3: Install Python dependencies
pip install -r requirements.txt

# Step 4: Install ComfyUI Manager (as custom node)
cd custom_nodes
git clone https://github.com/Comfy-Org/ComfyUI-Manager.git
cd ..
clear

# Step 5: Download required model files

cd custom_nodes

# Custom Node Repositories
git clone https://github.com/pythongosssss/ComfyUI-Custom-Scripts.git
git clone https://github.com/city96/ComfyUI-GGUF.git
git clone https://github.com/kijai/ComfyUI-KJNodes.git
git clone https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git
git clone https://github.com/Smirnov75/ComfyUI-mxToolkit.git
git clone https://github.com/facok/ComfyUI-HunyuanVideoMultiLora.git
git clone https://github.com/rgthree/rgthree-comfy.git
git clone https://github.com/Fannovel16/ComfyUI-Frame-Interpolation.git
git clone https://github.com/WASasquatch/was-node-suite-comfyui.git
git clone https://github.com/kijai/ComfyUI-Florence2.git
git clone https://github.com/yuvraj108c/ComfyUI-Upscaler-Tensorrt.git
git clone https://github.com/pollockjj/ComfyUI-MultiGPU.git

cd ..
clear

## Text Encoder
cd models/text_encoder
wget https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/text_encoders/umt5_xxl_fp8_e4m3fn_scaled.safetensors  # Replace with actual URL
cd ../..

## VAE Model
cd models/vae
wget https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors     # Replace with actual URL
cd ../..

#CLIP
cd models/clip
wget https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/blob/main/split_files/text_encoders/umt5_xxl_fp8_e4m3fn_scaled.safetensors
cd ../..


cd models/diffusers
wget https://huggingface.co/UmeAiRT/ComfyUI-Auto_installer/resolve/main/models/diffusion_models/WAN/wan2.1_i2v_480p_14B_fp8_e4m3fn.safetensors?download=true  # Replace with actual URL
cd ../..

cd models/loras
wget https://civitai.com/api/download/models/1475095?type=Model&format=SafeTensor  # Replace with actual URL
cd ../..

# Step 6: Start ComfyUI with port exposed
python main.py --listen 0.0.0.0