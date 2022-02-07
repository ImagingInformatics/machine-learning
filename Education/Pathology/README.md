# Preprocessing Pathology Whole Slide Images for Segmentation


### Task

In this notebook we will generate the dataset that can be used to train a model to segment glomeruli in kidney biopsy images.

Unfortunately, we can't use Whole Slide Images as an input to our CNN (average of 40,000 x 40,000 pixels), due to limitations in current computational power. Thus, we need to split the WSI into small patches.

### Requirements

- Programming in Python
- 100GB storage

### Learning Objectives:
 
By the end of this activity, you will be able to:

- Understand the running length encoding (RLE) format for segmentation masks
- Convert RLE to mask
- Open gigapixel whole slide pathology images (WSI)
- Convert WSIs and their corresponding masks into tiles


### Dataset

The dataset we will use as example is from a Kaggle Challenge (HubMap) and can be downloaded at: https://www.kaggle.com/c/hubmap-kidney-segmentation/data. 

The images are in .tiff format and segmentation masks are compressed in rle format in a .csv file.

Make sure you download the dataset (30.71GB), unzip it, and execute this Juypter Notebook from within the dataset folder where you can access the train/ folder and the train.csv file.

### Acknowledgements

This Jupyter Notebook was based on code by João Pedro Mazuco Rodriguez (joaopedromrodriguez@gmail.com), modified by Felipe Kitamura (kitamura.felipe@gmail.com).
