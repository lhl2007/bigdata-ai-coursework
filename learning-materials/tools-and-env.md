# 开发环境与工具链

## 1. Python 环境

```bash
python -m venv .venv
source .venv/bin/activate      # Linux / macOS
.venv\Scripts\activate         # Windows

pip install -r requirements.txt
```

推荐工具：
- `pip` 或 `uv`（更快）
- `conda`（含科学计算包）

## 2. 大数据工具

- **Hadoop**：本地伪分布式集群用 Docker 启动
- **Spark**：`pip install pyspark` 或独立部署
- **Kafka**：用 Docker Compose 启动单节点

## 3. 机器学习框架

```bash
pip install numpy pandas scikit-learn
pip install torch torchvision torchaudio
pip install transformers datasets
```

## 4. 常用 IDE

- VS Code + Python 插件
- JupyterLab / Jupyter Notebook
- PyCharm

## 5. Git 工作流

```bash
git clone <repo>
git checkout -b feature/xxx
# ...
git add .
git commit -m "feat: xxx"
git push origin feature/xxx
```

## 6. 学习资料

- 《Python 数据科学手册》
- 《深入理解 Spark》
- 《动手学深度学习》（李沐）