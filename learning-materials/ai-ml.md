# 机器学习与深度学习笔记

## 1. 机器学习基础

### 监督学习
- 分类：Logistic Regression、SVM、决策树、随机森林、XGBoost
- 回归：线性回归、岭回归、Lasso

### 非监督学习
- 聚类：K-Means、DBSCAN、层次聚类
- 降维：PCA、t-SNE、UMAP

### 评估指标
- 分类：Accuracy / Precision / Recall / F1 / AUC
- 回归：MSE / MAE / R²

## 2. 深度学习

### 网络结构
- **MLP**：全连接网络
- **CNN**：卷积网络，擅长图像
- **RNN / LSTM**：序列模型，擅长文本/时序
- **Transformer**：注意力机制，NLP 主力

### 训练技巧
- 优化器：SGD / Adam / AdamW
- 正则化：Dropout / L2 / BatchNorm
- 学习率调度：warmup / cosine decay

### 主流框架
- PyTorch（学术首选）
- TensorFlow / Keras（工业常见）
- Hugging Face Transformers（预训练模型）

## 3. 大数据 × AI

- 训练数据从 GB 到 TB 级别
- 分布式训练：Parameter Server / AllReduce
- 推理优化：量化、剪枝、蒸馏