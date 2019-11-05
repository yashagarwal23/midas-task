conda create -n task_env python=3.6.3
conda activate task_env
pip3 install python_speech_features pickle-mixin scipy numpy pandas scikit-learn torch torchvision tqdm
conda deactivate
echo "task_env" conda environment created