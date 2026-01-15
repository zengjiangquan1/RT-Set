@echo off
echo 初始化RT-Set数据集Git仓库...

REM 初始化Git仓库
git init

REM 添加所有文件
git add .

REM 提交初始版本
git commit -m "Initial commit: RT-Set Rubber Tree Crown Segmentation Dataset

- Added 5281 high-resolution UAV images
- Includes complete phenological cycle coverage
- COCO format annotations for instance segmentation
- Dataset spans from budding to defoliation stages
- Comprehensive README with usage instructions"

echo.
echo Git仓库初始化完成！
echo.
echo 接下来请执行以下步骤：
echo 1. 在GitHub上创建新仓库 (https://github.com/new)
echo 2. 仓库命名为: RT-Set 或 rubber-tree-dataset
echo 3. 不要初始化README（因为我们已经有了）
echo 4. 复制仓库的HTTPS URL
echo 5. 运行以下命令（将URL替换为您的仓库URL）：
echo.
echo git remote add origin YOUR_REPOSITORY_URL
echo git push -u origin master
echo.
echo 按任意键继续...
pause > nul