NUM_GPUS=1 MAX_STEPS=30000 GLOBAL_BATCH_SIZE=16 SAVE_STEPS=10000 uv run bash examples/finetune.sh \
    --base-model-path nvidia/GR00T-N1.7-3B \
    --dataset-path examples/LIBERO/libero_spatial_no_noops_1.0.0_lerobot/ \
    --embodiment-tag LIBERO_PANDA \
    --output-dir /pfss/mlde/workspaces/mlde_wsp_MGPATH/ngoc/gr00t_ckpt/libero_spatial_his_30000 \
    --use-history \
    --window-size 5 
