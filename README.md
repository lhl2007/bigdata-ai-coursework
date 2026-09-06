# 大数据与人工智能课程作业

> GitHub: <https://github.com/lhl2007/bigdata-ai-coursework>

## 课程简介

本仓库用于存放「大数据与人工智能」课程的作业代码、报告与笔记。

## 目录结构

```
.
├── README.md           本文件
├── .gitignore          Python / 数据科学忽略规则
├── .gitmessage         Commit 信息模板（启用见下方）
├── push.bat            一键推送脚本（双击即可）
├── homework-XX/        每次作业一个子目录
│   ├── README.md       作业说明
│   ├── code/           源代码
│   ├── report/         实验报告 / PDF
│   └── data/           作业用数据
└── notes/              课堂笔记与总结
```

## 提交流程

1. 克隆仓库：
   ```bash
   git clone https://github.com/lhl2007/bigdata-ai-coursework.git
   ```
2. 修改/新增文件后：
   ```bash
   git add .
   git commit                                  # 不带 -m，使用 .gitmessage 模板
   git push origin main
   ```
   或者直接用桌面的 `push-coursework.bat` / 仓库里的 `commit-and-push.bat` 双击即可。
3. 首次 push 时 Windows 会自动弹出 GitHub 浏览器授权页，点 **Authorize** 即可。

## Commit 规范建议（详细模板见 `.gitmessage`）

- `feat(homework-XX): <一句话>` —— 新作业 / 新功能
- `docs: <文档改动>`
- `fix: <bug 修复>`
- `chore: <杂项 / 工具调整>`

启用 commit 模板（只需执行一次）：

```bash
git config --local commit.template .gitmessage
```