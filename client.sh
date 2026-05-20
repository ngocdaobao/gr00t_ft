gr00t/eval/sim/LIBERO/libero_uv/.venv/bin/python gr00t/eval/rollout_policy.py \
    --n-episodes 20 \
    --policy-client-host 127.0.0.1 \
    --policy-client-port 5555 \
    --max-episode-steps 720 \
    --video_dir /pfss/mlde/workspaces/mlde_wsp_MGPATH/ngoc/output/gr00t_n1d7/libero_spatial \
    --env-name libero_sim/pick_up_the_black_bowl_next_to_the_ramekin_and_place_it_on_the_plate \
    --n-action-steps 8 \
    --n-envs 1