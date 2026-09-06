# 大数据基础笔记

## 1. 分布式存储：HDFS

- 设计目标：处理超大文件（GB ~ TB），流式读写
- 核心概念：NameNode（元数据）+ DataNode（数据块）
- 副本策略：默认 3 副本，跨机架
- 适合：一次写入、多次读取

## 2. 分布式计算

### MapReduce
- 两阶段：Map → Shuffle & Sort → Reduce
- 优点：简单、容错
- 缺点：磁盘 IO 多、延迟高

### Spark
- 基于内存的计算框架，比 MapReduce 快 10~100 倍
- 核心抽象：RDD（弹性分布式数据集）
- API：Spark SQL / DataFrame / MLlib / Structured Streaming

## 3. 流处理

- **Kafka**：分布式消息队列，吞吐量高
- **Flink**：真正的流式处理引擎，支持事件时间
- **Spark Streaming**：微批处理实现

## 4. SQL-on-Hadoop

- Hive、Impala、Presto：在分布式存储上跑 SQL 查询

## 5. 常见面试要点

- 数据倾斜怎么处理？
- Shuffle 是怎么实现的？
- Spark 的宽窄依赖、Stage 划分