from huggingface_hub import upload_folder

upload_folder(
    folder_path="/pfss/mlde/workspaces/mlde_wsp_MGPATH/ngoc/gr00t_ckpt/libero_spatial/checkpoint-20000",
    repo_id="baongocdao/gr00tn1d7_ft",
    repo_type="model",
)