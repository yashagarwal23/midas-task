conda create -n task_env python=3.6.3
conda activate task_env
conda install torch torchvision fastai pandas numpy
conda deactivate
echo "task_env" conda environment created