# 大数据与人工智能课程作业

> GitHub: <https://github.com/lhl2007/bigdata-ai-coursework>

## 仓库用途

本仓库用于「大数据与人工智能」课程的学习资料整理、概念自学笔记归档、作业代码存放与提交记录追溯。

整体定位是"个人课程学习档案"——既能让我自己以后翻阅复习，也能让同学和老师快速看到我对每个知识点的理解。

## 目录结构

```
bigdata-ai-coursework/
├── README.md                  本文件
├── .gitignore                 忽略密钥、API key、缓存、临时文件
├── .workbuddy/
│   └── skills/
│       └── concept-study-skill/
│           └── SKILL.md       项目级 Skill：接收概念 → 生成结构化学习资料
└── learning-materials/        课程学习资料
    ├── README.md
    ├── course-overview.md     课程整体概述
    ├── big-data.md            大数据基础笔记
    ├── ai-ml.md               机器学习与深度学习笔记
    ├── tools-and-env.md       开发环境与工具链
    ├── references.md          参考资料清单
    └── concept-relationship.html   Agent / 大模型上下文 / Skill 三者关系说明
```

## 项目级 Skill 说明

仓库根目录下的 `.workbuddy/skills/concept-study-skill/SKILL.md` 是一个**项目级 Skill**，
用于"输入任意专业概念 → 自动生成结构化个人学习资料"。

Skill 自身说明了：

- 适用场景与不适用边界
- 调用方必须提供的输入信息（概念名称、所属领域、学习目标等）
- 生成执行的六个步骤
- 输出资料的固定六段结构（个人理解解释 / 核心机制 / 真实应用案例 / 容易混淆点 / 公开参考来源 / 自测思考题）
- 资料来源必须**公开可核查**（≥3 条，至少 1 条是官方文档或教材）
- 自检校验的 8 项硬清单

**重要：Skill 本身是通用的**——可以传入任意新概念（不限于 Agent、上下文、Skill），
会按统一结构产出学习资料。

### 在 WorkBuddy 中调用这个 Skill

1. 打开 WorkBuddy → 在对话窗口直接告诉 WorkBuddy：
   > "请使用 concept-study-skill 这个 Skill，帮我学习『Transformer』这个概念。背景：我了解 CNN 但不熟注意力机制，希望中等深度、1500-2500 字。"
2. WorkBuddy 加载 `.workbuddy/skills/concept-study-skill/SKILL.md` 后，会按其中定义的"输入信息要求"逐项跟你核对（缺什么问什么）
3. 生成结果会写到指定路径（如 `learning-materials/transformer-notes.md`），并按"自检校验要求"逐条确认
4. 我（用户）阅读生成结果，**人工核查 + 修改**后再 `git add . && git commit && git push`

## 已生成学习资料清单

| 文件 | 类型 | 内容 |
|------|------|------|
| `learning-materials/README.md` | 索引 | 学习资料目录说明 |
| `learning-materials/course-overview.md` | 笔记 | 课程整体目标与学习路径 |
| `learning-materials/big-data.md` | 笔记 | HDFS / MapReduce / Spark / 流处理基础 |
| `learning-materials/ai-ml.md` | 笔记 | 监督/非监督学习、深度学习、分布式训练 |
| `learning-materials/tools-and-env.md` | 笔记 | Python 环境、大数据工具链、Git 工作流 |
| `learning-materials/references.md` | 资料 | 教材、在线课程、文档、论文、数据集 |
| `learning-materials/concept-relationship.html` | 概念图 | Agent / 大模型上下文 / Skill 三者关系（含 Mermaid 图） |
| `.workbuddy/skills/concept-study-skill/SKILL.md` | Skill | 通用概念自学 Skill 定义 |

## AI 生成 / 人工核查说明

为符合学术诚信与个人负责的原则，本仓库所有内容按以下方式产生：

| 内容 | AI 产出部分 | 本人完成部分 |
|------|------------|--------------|
| `README.md`（本文件） | 初稿 | 整体结构调整、定稿措辞、清单核对 |
| `learning-materials/course-overview.md` | 提纲与文字初稿 | 阅读后**调整章节顺序、补充个人关注点**；如有事实错误由本人负责 |
| `learning-materials/big-data.md` | 知识点梳理初稿 | **逐节人工核对**：检查 HDFS 副本数、Spark 抽象、面试要点是否与本人课堂笔记一致；删去了与课程无关的 2 段 |
| `learning-materials/ai-ml.md` | 知识点梳理初稿 | **逐节人工核对**：补正了优化器对比（AdamW vs Adam）、补充了"分布式训练"小节；删去了与课程无关的 GAN 段落 |
| `learning-materials/tools-and-env.md` | 工具清单初稿 | 删去了与本课程无关的 Web 框架段落；Git 工作流小节按本人实际习惯重写 |
| `learning-materials/references.md` | 教材与论文清单 | **人工补充**了 2 本课堂上老师指定的中文教材；删除 1 个已失效链接 |
| `learning-materials/concept-relationship.html` | 文字与 Mermaid 图初稿 | 重新组织"上下文影响 Agent"与"Skill 沉淀"两个重点小节；Mermaid 图重新调整箭头方向 |
| `.workbuddy/skills/concept-study-skill/SKILL.md` | Skill 结构与文本初稿 | **重点人工定义**了"输入信息要求"、"自检校验要求"两节，避免 AI 自由发挥 |

**承诺**：本仓库不直接 push AI 未经本人阅读的原始输出；任何 AI 草稿在提交前我都至少完整读过一次，并对与本课程或个人理解不符的内容做了修正或删除。

## 提交流程

```bash
git add .
git commit -m "type(scope): 说明"
git push origin main
```

> 注：本机通过 Git Credential Manager (GCM) 处理授权；首次 push 时浏览器会弹出 GitHub 授权页，按提示点 Authorize 即可。