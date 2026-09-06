# 大数据与人工智能课程作业

> GitHub: <https://github.com/lhl2007/bigdata-ai-coursework>

## 课程简介

本仓库用于存放「大数据与人工智能」课程的作业代码、报告与笔记。

## 目录结构

```
.
├── README.md          本文件
├── homework-XX/       每次作业单独一个子目录
│   ├── code/          源代码
│   ├── report/        实验报告 / PDF
│   └── README.md      作业说明
├── notes/             课堂笔记与总结
└── data/              课程使用的数据集（视大小决定是否入仓）
```

## 提交流程

1. 克隆仓库：
   ```bash
   git clone https://github.com/lhl2007/bigdata-ai-coursework.git
   ```
2. 修改/新增文件后：
   ```bash
   git add .
   git commit -m "homework-XX: <简短说明>"
   git push
   ```
3. 首次 push 时 Windows 会自动弹出 GitHub 浏览器授权页，点「Authorize」即可。

## Commit 规范建议

- `homework-XX: <做了什么>` —— 例：`homework-01: 完成 K-means 聚类实验`
- `docs: <文档/说明改动>`
- `fix: <bug 修复>`