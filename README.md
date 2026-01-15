# RT-Set: Rubber Tree Crown Segmentation Dataset

## Overview

RT-Set is a high-quality rubber tree crown segmentation dataset specifically designed to address the challenges in segmenting rubber tree crowns from UAV imagery. The dataset contains 5,281 high-resolution images covering the complete phenological cycle of rubber trees from budding to defoliation stages.

## Dataset Characteristics

### Study Area
- **Location**: Northwest of Danzhou City, Hainan Province (19°31'50.59"N, 109°28'52.62"E)
- **Management**: Rubber Research Institute, Chinese Academy of Tropical Agricultural Sciences
- **Climate**: Subtropical monsoon climate
- **Annual Temperature**: 22.5°C - 25.6°C
- **Annual Precipitation**: 900 - 2400 mm

### Data Collection
- **Equipment**: DJI Phantom 4 RTK UAV
  - 1-inch, 20.48-megapixel CMOS sensor
- **Flight Parameters**:
  - Altitude: 80 meters
  - Speed: 6 m/s
  - Overlap: 85% both forward and side
- **Processing**: Pix4DMapper for mosaicking and orthorectification
- **Cropping**: 640×640 pixel image patches

### Annotation Information
- **Annotation Tool**: Labelme software
- **Annotation Type**: Polygon-based instance segmentation annotation
- **Annotation Principle**: Tree crowns located at image boundaries with incomplete morphology are excluded

### Dataset Split
Total of 5,281 images, split in 7:2:1 ratio:
- **Training Set**: 3,697 images
- **Validation Set**: 1,056 images
- **Test Set**: 528 images

### Phenological Stage Distribution

| Phenological Stage | Training | Validation | Test | Total |
|-------------------|----------|------------|------|-------|
| Budding Stage | 1,074 | 271 | 131 | 1,476 |
| Growing Stage | 1,381 | 286 | 136 | 1,803 |
| Mature Stage | 1,068 | 243 | 120 | 1,431 |
| Defoliation Stage | 174 | 256 | 141 | 571 |
| **Total** | **3,697** | **1,056** | **528** | **5,281** |

## Challenges and Applications

RT-Set dataset specifically addresses three major challenges in rubber tree crown segmentation:

1. **Crown Overlap**: Fuzzy boundaries between adjacent crowns leading to segmentation difficulties
2. **Background Vegetation Interference**: Similar colors between understory vegetation and tree crowns
3. **Seasonal Variations**: Significant morphological changes in crowns throughout phenological cycles

## Performance Benchmark

On the RT-Set dataset, the CSAF method achieves 76.63% accuracy on AP50 metric, significantly outperforming existing methods.

## Data Format

- **Image Format**: PNG
- **Resolution**: 640×640 pixels

## Usage

```python
# Example code: Loading RT-Set dataset
import json
import cv2
import matplotlib.pyplot as plt

# Load annotation file
with open('annotations.json', 'r') as f:
    annotations = json.load(f)

# Read image and annotations
image = cv2.imread('image_0001.png')
# Process segmentation annotations...
```

## Download and Access

The complete dataset will be made publicly available upon paper publication. For early access or collaboration inquiries, please contact:

- **Corresponding Author**: Guoxiong Zhou (zhougx01@163.com)

## Citation

If you use the RT-Set dataset in your research, please cite the following paper:

```bibtex
@article{zeng2024deep,
  title={Deep Learning-Based Rubber Tree Crown Segmentation from UAV Imagery},
  author={Zeng, Jiangquan and Lv, Mingjie and Zhou, Guoxiong and Wang, Xiangjun and Zhang, Huaiqing and Liu, Exian},
  journal={IEEE Transactions on Geoscience and Remote Sensing},
  year={2024},
  publisher={IEEE}
}
```

## License

This dataset is for academic research use only. Please contact the dataset provider for commercial use.
