# RT-Set数据集GitHub上传指南

## 步骤1: 创建GitHub仓库

1. 访问 [GitHub.com](https://github.com) 并登录您的账户
2. 点击右上角的 "+" 按钮，选择 "New repository"
3. 填写仓库信息：
   - **Repository name**: `RT-Set` 或 `rubber-tree-dataset`
   - **Description**: `High-quality rubber tree crown segmentation dataset from UAV imagery`
   - **Visibility**: 选择 `Public` (公开) 或 `Private` (私有)
   - **⚠️ 重要**: 不要勾选 "Add a README file"，因为我们已经创建了专业的README

## 步骤2: 初始化本地Git仓库

双击运行 `setup_github.bat` 文件，或在命令行中执行：

```bash
# 初始化Git仓库
git init

# 添加所有文件
git add .

# 提交初始版本
git commit -m "Initial commit: RT-Set Rubber Tree Crown Segmentation Dataset

- Added 5281 high-resolution UAV images
- Includes complete phenological cycle coverage
- COCO format annotations for instance segmentation
- Dataset spans from budding to defoliation stages
- Comprehensive README with usage instructions"
```

## 步骤3: 连接到GitHub仓库

1. 在GitHub仓库页面，点击绿色的 "Code" 按钮
2. 复制仓库的HTTPS URL (类似: `https://github.com/yourusername/RT-Set.git`)
3. 在命令行中执行：

```bash
# 添加远程仓库
git remote add origin YOUR_REPOSITORY_URL

# 推送代码到GitHub
git push -u origin master
```

## 步骤4: 验证上传

1. 刷新GitHub仓库页面
2. 确认所有文件都已上传成功
3. 检查README.md是否正确显示

## 注意事项

### 数据集大小考虑
- RT-Set包含5281张PNG图像，总大小可能很大
- 如果推送失败，考虑使用Git LFS处理大文件：
  ```bash
  # 安装Git LFS
  git lfs install

  # 跟踪PNG文件
  git lfs track "*.png"

  # 重新添加和提交
  git add .gitattributes
  git add *.png
  git commit -m "Add large image files with Git LFS"
  ```

### 隐私和许可证
- 确认数据集可以公开分享
- 在README中已注明：完整数据集将在论文发表后公开

### 版本控制
- 建议定期创建标签(tag)来标记数据集版本：
  ```bash
  git tag v1.0
  git push origin v1.0
  ```

## 常见问题

### Q: 推送时提示文件太大？
A: 使用Git LFS处理大文件，或考虑只上传标注文件和少量示例图像。

### Q: 如何更新数据集？
A: 添加新文件后：
```bash
git add .
git commit -m "Update dataset with new images"
git push
```

### Q: 如何分享仓库链接？
A: 复制GitHub仓库URL，例如：`https://github.com/yourusername/RT-Set`

## 技术支持

如果遇到问题，请参考：
- [GitHub文档](https://docs.github.com/)
- [Git LFS文档](https://git-lfs.github.io/)
- 或联系数据集维护者

---

**数据集状态**: 完整数据集将在论文发表后公开
**论文标题**: Deep Learning-Based Rubber Tree Crown Segmentation from UAV Imagery
**通讯作者**: Guoxiong Zhou (zhougx01@163.com)