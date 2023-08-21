# Plant Disease Detector
The "Plant Disease Detector" employs a CNN-based architecture to classify plants into different categories based on the patterns present on their leaves, utilizing leaf images. This system serves to effectively categorize plants afflicted by various diseases.

The process of achieving the output in the Plant Disease Detector involves several key steps:

1. **Data Collection**: A comprehensive dataset of leaf images from various plant species is gathered. These images should encompass different health conditions, including healthy plants and those affected by various diseases.

2. **Data Preprocessing**: The collected images are preprocessed to ensure consistency and suitability for the CNN model. Preprocessing includes resizing images to a standard dimension, normalizing pixel values, and potentially applying data augmentation techniques to enhance the model's robustness.

3. **Model Architecture**: The CNN architecture is designed to automatically learn intricate features from the leaf images. This architecture typically consists of convolutional layers that extract visual patterns, followed by pooling layers that reduce spatial dimensions. Fully connected layers are subsequently used for classification purposes.

4. **Training the Model**: The model is trained using the preprocessed dataset. During training, it learns to recognize distinctive patterns and characteristics associated with different plant diseases. This learning process is guided by minimizing a defined loss function, which quantifies the disparity between predicted class probabilities and actual labels.

5. **Validation and Testing**: The trained model's performance is evaluated using a separate validation dataset. This step ensures that the model generalizes well to new, unseen data and avoids overfitting. After validation, the model's effectiveness is further assessed using a dedicated testing dataset to simulate real-world conditions.

6. **Inference**: Once trained and validated, the model is ready for inference. It takes a leaf image as input and generates a probability distribution across various disease categories. This prediction informs the user about the potential disease affecting the plant.


## Images
Image Dataset:-

<img width="644" alt="image" src="https://github.com/YashSaxena21/Plant_Disease_Detector/assets/107143221/7a4844aa-2733-413d-9c29-3e839cbfe231">
Classified/Predicted Images along with their Confidence Level:-

<img width="672" alt="image" src="https://github.com/YashSaxena21/Plant_Disease_Detector/assets/107143221/8056eac2-2cb8-4a42-8ea9-1880cd3bbe5d">

## Author

- [Yash Saxena](https://github.com/YashSaxena21)
