export LIBERO_CONFIG_PATH=/pfss/mlde/workspaces/mlde_wsp_MGPATH/ngoc/Isaac-GR00T/.libero
# Increased batch size from 1 to 8, added gradient accumulation for stability, reduced learning rate
NUM_GPUS=2 MAX_STEPS=20000 GLOBAL_BATCH_SIZE=8 SAVE_STEPS=20000 uv run bash examples/finetune.sh \
    --base-model-path nvidia/GR00T-N1.7-3B \
    --dataset-path examples/LIBERO/libero_spatial_no_noops_1.0.0_lerobot/ \
    --embodiment-tag LIBERO_PANDA \
    --output-dir /pfss/mlde/workspaces/mlde_wsp_MGPATH/ngoc/gr00t_ckpt/libero_spatial_multi_frames_armpose
