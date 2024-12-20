#!/bin/bash

# This file will be sourced in init.sh

# https://github.com/MushroomFleet/Runpod-init

# Packages are installed after nodes so we can fix them...

DEFAULT_WORKFLOW="https://raw.githubusercontent.com/ai-dock/comfyui/main/config/workflows/flux-comfyui-example.json"

APT_PACKAGES=(
    #"package-1"
    #"package-2"
)

PIP_PACKAGES=(
    #"package-1"
    #"package-2"
)

NODES=(
	"https://github.com/ltdrdata/ComfyUI-Manager"
	"https://github.com/cubiq/ComfyUI_essentials"
	"https://github.com/MushroomFleet/DJZ-Nodes"
	"https://github.com/Gourieff/comfyui-reactor-node"
	"https://github.com/ltdrdata/ComfyUI-Impact-Pack"
	"https://github.com/Derfuu/Derfuu_ComfyUI_ModdedNodes"
	"https://github.com/rgthree/rgthree-comfy"
	"https://github.com/crystian/ComfyUI-Crystools"
	"https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite"
	"https://github.com/giriss/comfy-image-saver"
	"https://github.com/Fannovel16/comfyui_controlnet_aux"
	"https://github.com/WASasquatch/was-node-suite-comfyui"
	"https://github.com/pythongosssss/ComfyUI-Custom-Scripts"
	"https://github.com/melMass/comfy_mtb"
	"https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes"
	"https://github.com/sipherxyz/comfyui-art-venture"
	"https://github.com/twri/sdxl_prompt_styler"
	"https://github.com/hylarucoder/comfyui-copilot"
	"https://github.com/kijai/ComfyUI-KJNodes"
	"https://github.com/KoreTeknology/ComfyUI-Universal-Styler"
        "https://github.com/heshengtao/comfyui_LLM_party"
        "https://github.com/kijai/ComfyUI-Florence2"
	"https://github.com/BlakeOne/ComfyUI-CustomScheduler"
        "https://github.com/yolain/ComfyUI-Easy-Use"
	"https://github.com/Clybius/ComfyUI-Extra-Samplers"
        "https://github.com/logtd/ComfyUI-Fluxtapoz"
	"https://github.com/kijai/ComfyUI-SUPIR"
        "https://github.com/shiimizu/ComfyUI-TiledDiffusion"
        "https://github.com/pythongosssss/ComfyUI-WD14-Tagger"
        "https://github.com/kadirnar/ComfyUI-YOLO"
        "https://github.com/pamparamm/ComfyUI-ppm"
        "https://github.com/city96/ComfyUI_ExtraModels"
        "https://github.com/cubiq/ComfyUI_InstantID"
        "https://github.com/bvhari/ComfyUI_SUNoise"
        "https://github.com/ssitu/ComfyUI_UltimateSDUpscale"
        "https://github.com/gokayfem/ComfyUI_VLM_nodes"
        "https://github.com/chrisgoringe/cg-use-everywhere"
        "https://github.com/shadowcz007/comfyui-mixlab-nodes"
        "https://github.com/jags111/efficiency-nodes-comfyui"
        "https://github.com/Stability-AI/stability-ComfyUI-nodes"
        "https://github.com/XLabs-AI/x-flux-comfyui"
)

WORKFLOWS=(
	"https://github.com/MushroomFleet/DJZ-Workflows"
)

CHECKPOINT_MODELS=(
	#"https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt"
	#"https://huggingface.co/stabilityai/stable-diffusion-2-1/resolve/main/v2-1_768-ema-pruned.ckpt"
	#"https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors"
	#"https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors"
         "https://huggingface.co/Khepridung/ayoub/resolve/main/flux1-dev.safetensors"
	 "https://huggingface.co/mikeyandfriends/PixelWave_FLUX.1-dev_03/resolve/main/pixelwave_flux1_dev_bf16_03.safetensors"
)

UNET_MODELS=(
	#"https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/flux1-dev.sft"
         "https://huggingface.co/Khepridung/ayoub/resolve/main/flux1-dev.safetensors"
	 "https://huggingface.co/mikeyandfriends/PixelWave_FLUX.1-dev_03/resolve/main/pixelwave_flux1_dev_bf16_03.safetensors"
)

CLIP_MODELS=(
	"https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/clip_l.safetensors"
	"https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/t5xxl_fp16.safetensors"
        "https://huggingface.co/Khepridung/ayoub/resolve/main/ViT-L-14-TEXT-detail-improved-hiT-GmP-TE-only-HF.safetensors"
)

LORA_MODELS=(
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/AssassinKahb-8-16-e9-10.safetensors"
	"https://huggingface.co/Khepridung/loras/resolve/main/Anime_Screencap_-_Style-000004.safetensors"
	"https://huggingface.co/Khepridung/loras/resolve/main/C64_Flux2.safetensors"
	"https://huggingface.co/Khepridung/loras/resolve/main/Comic%20book%20V2.safetensors"
	"https://huggingface.co/Khepridung/loras/resolve/main/Eldritch_Paint_Sketch_for_Flux_1.0.5.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/Eldritch_Pastels_for_Flux_1.0.2.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/Graffiti_Logo_Style_Flux.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/IlluLoRA_V1.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/KikiLaPetiteSorciere_style_flux_v1.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/OB%E4%B8%AD%E4%B8%96%E7%BA%AA%E6%B2%B9%E7%94%BBv1.1.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/PostageStamp01_CE_FLUX3k_AIT.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/Psychedelic_Noir.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/ROYGBIV_Flux_v2_renderartist.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/RetroAnimeFluxV1.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/Retro_Comic_Flux_v1_renderartist.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/Rubber_Hose_Style_for_FLUX.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/Simple_Vector_Flux_v2_renderartist.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/Tang%20Bohu's%20Painting%20Style%20LORA%20%5BFLUX%5D_epoch_10.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/Vaporwave_Graphic-e5.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/Video_Game_Status_-_Flux.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/Vintage_Vibes_FLUX_DEF.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/Wiz-RubberHoseAnimation_Flux.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/Wiz-Vintage_Comic-Legacy.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/WorldofDoodleFlux.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/barbier_flux-000003.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/c0l0ringb00k_Flux_v1_renderartist.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/creepcute-000001.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/fla8.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/impasto%20painting.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/incase_new_flux.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/old_comicbook_flux.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/pixel-art-flux-v3-learning-rate-4.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/pktrainer_F1-v1-0.safetensors"
 "https://huggingface.co/Khepridung/loras/resolve/main/vector_shirt_flux_v1.safetensors"
)

VAE_MODELS=(
    "https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/ae.sft"
    #"https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
    "https://huggingface.co/Khepridung/ayoub/resolve/main/flux1DevVAE_safetensors.safetensors"
)

ESRGAN_MODELS=(
    "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    "https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
    "https://huggingface.co/uwg/upscaler/resolve/main/ESRGAN/4x_NickelbackFS_72000_G.pth"
    "https://huggingface.co/gemasai/4x_NMKD-Siax_200k/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
	"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-hed-controlnet-v3.safetensors"
	"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-canny-controlnet-v3.safetensors"
	"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-depth-controlnet-v3.safetensors"
    #"https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_canny_mid.safetensors"
    #"https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_depth_mid.safetensors"
    #"https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/t2i-adapter_diffusers_xl_openpose.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_depth-fp16.safetensors"
    #"https://huggingface.co/kohya-ss/ControlNet-diff-modules/resolve/main/diff_control_sd15_depth_fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_hed-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_mlsd-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_normal-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_scribble-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_color-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_depth-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_keypose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_sketch-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_style-fp16.safetensors"
)

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    if [[ ! -d /opt/environments/python ]]; then 
        export MAMBA_BASE=true
    fi
    source /opt/ai-dock/etc/environment.sh
    source /opt/ai-dock/bin/venv-set.sh comfyui

    if provisioning_has_valid_hf_token; then
        UNET_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/flux1-dev.safetensors")
        VAE_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/ae.safetensors")
    else
        UNET_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/flux1-schnell.safetensors")
        VAE_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/ae.safetensors")
        sed -i 's/flux1-dev\.safetensors/flux1-schnell.safetensors/g' /opt/ComfyUI/web/scripts/defaultGraph.js
    fi

    provisioning_print_header
    provisioning_get_apt_packages
    provisioning_get_nodes
    provisioning_get_pip_packages
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/ckpt" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/unet" \
        "${UNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/clip" \
        "${CLIP_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/controlnet" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/vae" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/esrgan" \
        "${ESRGAN_MODELS[@]}"
    provisioning_get_workflows
    provisioning_print_end
}

function pip_install() {
    if [[ -z $MAMBA_BASE ]]; then
            "$COMFYUI_VENV_PIP" install --no-cache-dir "$@"
        else
            micromamba run -n comfyui pip install --no-cache-dir "$@"
        fi
}

function provisioning_get_apt_packages() {
    if [[ -n $APT_PACKAGES ]]; then
            sudo $APT_INSTALL ${APT_PACKAGES[@]}
    fi
}

function provisioning_get_pip_packages() {
    if [[ -n $PIP_PACKAGES ]]; then
            pip_install ${PIP_PACKAGES[@]}
    fi
}

function provisioning_get_nodes() {
    for repo in "${NODES[@]}"; do
        dir="${repo##*/}"
        path="/opt/ComfyUI/custom_nodes/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating node: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                   pip_install -r "$requirements"
                fi
            fi
        else
            printf "Downloading node: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
            if [[ -e $requirements ]]; then
                pip_install -r "${requirements}"
            fi
        fi
    done
}

function provisioning_get_workflows() {
    for repo in "${WORKFLOWS[@]}"; do
        dir=$(basename "$repo" .git)
        path="/opt/ComfyUI/user/default/workflows/${dir}"
        if [[ -d "$path" ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating workflows: %s...\n" "${repo}"
                ( cd "$path" && git pull )
            fi
        else
            printf "Cloning workflows: %s...\n" "${repo}"
            git clone "$repo" "$path"
        fi
    done
}

function provisioning_get_default_workflow() {
    if [[ -n $DEFAULT_WORKFLOW ]]; then
        workflow_json=$(curl -s "$DEFAULT_WORKFLOW")
        if [[ -n $workflow_json ]]; then
            echo "export const defaultGraph = $workflow_json;" > /opt/ComfyUI/web/scripts/defaultGraph.js
        fi
    fi
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    
    dir="$1"
    mkdir -p "$dir"
    shift
    arr=("$@")
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

function provisioning_has_valid_hf_token() {
    [[ -n "$HF_TOKEN" ]] || return 1
    url="https://huggingface.co/api/whoami-v2"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $HF_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

function provisioning_has_valid_civitai_token() {
    [[ -n "$CIVITAI_TOKEN" ]] || return 1
    url="https://civitai.com/api/v1/models?hidden=1&limit=1"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $CIVITAI_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

# Download from $1 URL to $2 file path
function provisioning_download() {
    if [[ -n $HF_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?huggingface\.co(/|$|\?) ]]; then
        auth_token="$HF_TOKEN"
    elif 
        [[ -n $CIVITAI_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?civitai\.com(/|$|\?) ]]; then
        auth_token="$CIVITAI_TOKEN"
    fi
    if [[ -n $auth_token ]];then
        wget --header="Authorization: Bearer $auth_token" -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
    else
        wget -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
    fi
}

provisioning_start
