# RT-Set: Rubber Tree Crown Segmentation Dataset

## 概述

RT-Set是一个高质量的橡胶树树冠分割数据集，专门用于解决无人机影像中橡胶树冠分割的挑战。该数据集包含5281张高分辨率图像，涵盖了橡胶树从萌芽期到落叶期的完整物候周期。

## 数据集特点

### 研究区域
- **位置**: 海南省儋州市西北部 (19°31'50.59"N, 109°28'52.62"E)
- **管理单位**: 中国热带农业科学院橡胶树研究所
- **气候类型**: 南亚热带季风气候
- **年均温度**: 22.5°C - 25.6°C
- **年降水量**: 900 - 2400 mm

### 数据采集
- **设备**: DJI Phantom 4 RTK无人机
  - 1英寸、2048万像素CMOS传感器
- **飞行参数**:
  - 高度: 80米
  - 速度: 6 m/s
  - 重叠度: 前后和侧向均为85%
- **处理**: Pix4DMapper软件进行拼接和正射校正
- **裁剪**: 640×640像素图像块

### 标注信息
- **标注工具**: Labelme软件
- **标注类型**: 基于多边形的实例分割标注
- **标注原则**: 位于图像边界且形态不完整的树冠被排除

### 数据集划分
总共5281张图像，按7:2:1比例划分：
- **训练集**: 3697张图像
- **验证集**: 1056张图像
- **测试集**: 528张图像

### 物候阶段分布

| 物候阶段 | 训练集 | 验证集 | 测试集 | 总计 |
|---------|-------|-------|-------|-----|
| 萌芽期 (Budding Stage) | 1074 | 271 | 131 | 1476 |
| 生长期 (Growing Stage) | 1381 | 286 | 136 | 1803 |
| 成熟期 (Mature Stage) | 1068 | 243 | 120 | 1431 |
| 落叶期 (Defoliation Stage) | 174 | 256 | 141 | 571 |
| **总计** | **3697** | **1056** | **528** | **5281** |

## 挑战与应用

RT-Set数据集特别针对橡胶树冠分割中的三大难题：

1. **树冠重叠**: 相邻树冠边界模糊导致分割困难
2. **背景植被干扰**: 林下植被与树冠颜色相似
3. **季节性变化**: 树冠形态随物候周期显著变化

## 相关研究

该数据集用于支撑"Deep Learning-Based Rubber Tree Crown Segmentation from UAV Imagery"论文研究，提出了一种名为CSAF的树冠分割框架，包括：

- **BCMM**: 边界连续性建模模块
- **PMCM**: 物理形态约束模块
- **CTLAM**: 跨时序自适应学习模块

## 性能基准

在RT-Set数据集上，CSAF方法在AP50指标上达到76.63%的准确率，显著优于现有方法。

## 数据格式

- **图像格式**: PNG
- **标注格式**: COCO格式的JSON文件（包含多边形分割标注）
- **分辨率**: 640×640像素

## 使用方法

```python
# 示例代码：加载RT-Set数据集
import json
import cv2
import matplotlib.pyplot as plt

# 加载标注文件
with open('annotations.json', 'r') as f:
    annotations = json.load(f)

# 读取图像和标注
image = cv2.imread('image_0001.png')
# 处理分割标注...
```

## 下载与访问

完整的数据集将在论文发表后公开提供。如需提前访问或有合作意向，请联系：

- **通讯作者**: Guoxiong Zhou (zhougx01@163.com)

## 引用

如果您在研究中使用RT-Set数据集，请引用以下论文：

```bibtex
@article{zeng2024deep,
  title={Deep Learning-Based Rubber Tree Crown Segmentation from UAV Imagery},
  author={Zeng, Jiangquan and Lv, Mingjie and Zhou, Guoxiong and Wang, Xiangjun and Zhang, Huaiqing and Liu, Exian},
  journal={IEEE Transactions on Geoscience and Remote Sensing},
  year={2024},
  publisher={IEEE}
}
```

## 许可证

本数据集仅供学术研究使用。商业用途请联系数据集提供者。

## 致谢

本研究受到以下基金资助：
- 中央公益性科研院所基本科研业务费 (1630032022007)
- 海南省自然科学基金 (324MS087)
- 国家重点研发计划 (2019YFD1000500)
- 农业农村部橡胶树种质创新与利用重点实验室开放课题基金 (RRI-KLOF202305)
- 国家自然科学基金 (32271877)