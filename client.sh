#!/bin/bash

TASKS=(
    "libero_sim/pick_up_the_black_bowl_between_the_plate_and_the_ramekin_and_place_it_on_the_plate"
    "libero_sim/pick_up_the_black_bowl_next_to_the_ramekin_and_place_it_on_the_plate"
    "libero_sim/pick_up_the_black_bowl_from_table_center_and_place_it_on_the_plate"
    "libero_sim/pick_up_the_black_bowl_on_the_cookie_box_and_place_it_on_the_plate"
    "libero_sim/pick_up_the_black_bowl_in_the_top_drawer_of_the_wooden_cabinet_and_place_it_on_the_plate"
    "libero_sim/pick_up_the_black_bowl_on_the_ramekin_and_place_it_on_the_plate"
    "libero_sim/pick_up_the_black_bowl_next_to_the_cookie_box_and_place_it_on_the_plate"
    "libero_sim/pick_up_the_black_bowl_on_the_stove_and_place_it_on_the_plate"
    "libero_sim/pick_up_the_black_bowl_next_to_the_plate_and_place_it_on_the_plate"
    "libero_sim/pick_up_the_black_bowl_on_the_wooden_cabinet_and_place_it_on_the_plate"
)

mkdir -p /pfss/mlde/workspaces/mlde_wsp_MGPATH/ngoc/output/gr00t_n1d7_ema/libero_spatial
touch /pfss/mlde/workspaces/mlde_wsp_MGPATH/ngoc/output/gr00t_n1d7_ema/libero_spatial/results.txt

for task in "${TASKS[@]}"; do
    echo "Evaluating task: $task"
    task_name=$(basename "$task")
    gr00t/eval/sim/LIBERO/libero_uv/.venv/bin/python gr00t/eval/rollout_policy.py \
        --n-episodes 20 \
        --policy-client-host 127.0.0.1 \
        --policy-client-port 5555 \
        --max-episode-steps 720 \
        --video_dir /pfss/mlde/workspaces/mlde_wsp_MGPATH/ngoc/output/gr00t_n1d7_ema/libero_spatial/$task_name \
        --env-name "$task" \
        --n-action-steps 8 \
        --n-envs 1
done