# Planet: Understanding the Amazon from Space

The aim is to classify the terrain from the satellite images

### Model
Transfer learning is used, pretrained resnet 50 and used it as the starting weights for this dataset.
Test Time Augmentation is used at the test time to predict the test images label.

### Results
f-score of 0.92737 was obtained
 
### Setup conda environment
```
chmod 777 setup.sh
./setup.sh
conda activate planet_env
```
