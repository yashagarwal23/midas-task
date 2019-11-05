# Speech Emotion Problem
The aim is to classify the emotions in an audio file.
The different emotions are neutral, happy, disgust, sad, fear

### Features
Mfcc features are extracted for every 25 ms second window taken at a step of 10ms.
The sample rate for audio file has been reduced to 16000 (max of 8000 Hz frequency will be captured) to avoid irrelevant features.
For each window 13 mfcc features will be extracted.
As the length of each audio file is different the number of windows and hence the number of features will also be different.

The mfcc features are extracted using the python_speech_features library.

```
def mfcc(signal, samplerate=16000, winlen=0.025, winstep=0.01, numcep=13, nfilt=26, nfft=512)
```

### Normalisation

Normalising the data to values between 0 to 1 had better results then standardising the data using mean and variance 

### Model

The normalised inputs are passed through 8 LSTM layers. The first layer is 8x64, while the rest are 64x64. 
After processing through the LSTM layers, the output is fed to fully connected Linear Layers

### Padding

To make the input sequence lengths same for batch processing, the inputs are padded with zeros at the end to make the shape of input of each file same  

### Results

Achieved 62.47% training accuracy and 63.0% validation accuracy

## To run tests
### Setup conda environment

```
chmod 777 setup.sh
./setup.sh
```

### Run tests
```
python test.py {path to test folder}
```
