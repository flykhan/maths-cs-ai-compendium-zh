# 数学、计算机科学与人工智能纲要

<img src="images/logo.png" alt="Logo" style="border-radius: 30px; width: 100%;">

**在线阅读**: [henryndubuaku.github.io/maths-cs-ai-compendium](https://henryndubuaku.github.io/maths-cs-ai-compendium/)

## 概述
大多数教科书将好的思想埋没在密集的符号之下，跳过直觉，假设你已经掌握了一半的内容，并且在人工智能等快速发展的领域很快过时。这是一本开放、非传统的教科书，从零开始涵盖数学、计算机科学和人工智能。为那些希望深入理解知识、而不仅仅是为了通过考试或面试的好奇实践者而编写。

## 背景
在过去几年从事AI/ML工作的过程中，我用笔记本记录了数学、计算机科学和人工智能概念的直觉优先、结合实际、不打马虎眼的解释。2025年，几位朋友用这些笔记准备DeepMind、OpenAI、Nvidia等公司的面试。他们全部被录用，目前在工作中表现出色。而我去年也进入了Y Combinator。所以现在我把这些分享给所有人。

## MCP 服务器
本仓库包含一个MCP服务器，允许任何AI助手（Claude Code、Cursor、VS Code等）将这本纲要作为知识库使用。它需要本地克隆该仓库。内置教育用途的工具和示例实现。

## 内容大纲

| # | 章节 | 简介 | 状态 |
|---|------|------|------|
| 01 | [向量](chapter%2001%3A%20vectors/01.%20vector%20spaces.md) | 空间、模长、方向、范数、度量、点积/叉积/外积、基、对偶性 | 已完成 |
| 02 | [矩阵](chapter%2002%3A%20matrices/01.%20matrix%20properties.md) | 性质、特殊类型、运算、线性变换、分解（LU、QR、SVD） | 已完成 |
| 03 | [微积分](chapter%2003%3A%20calculus/01.%20differential%20calculus.md) | 导数、积分、多元微积分、泰勒近似、优化与梯度下降 | 已完成 |
| 04 | [统计学](chapter%2004%3A%20statistics/01.%20fundamentals.md) | 描述性度量、抽样、中心极限定理、假设检验、置信区间 | 已完成 |
| 05 | [概率论](chapter%2005%3A%20probability/01.%20counting.md) | 计数、条件概率、分布、贝叶斯方法、信息论 | 已完成 |
| 06 | [机器学习](chapter%2006%3A%20machine%20learning/01.%20classical%20machine%20learning.md) | 经典机器学习、梯度方法、深度学习、强化学习、分布式训练 | 已完成 |
| 07 | [计算语言学](chapter%2007%3A%20computational%20linguistics/01.%20linguistic%20foundations.md) | 句法学、语义学、语用学、自然语言处理、语言模型、RNN、CNN、注意力机制、Transformer、文本扩散、文本OCR、MoE、SSM、现代LLM架构、自然语言处理评估 | 已完成 |
| 08 | [计算机视觉](chapter%2008%3A%20computer%20vision/01.%20image%20fundamentals.md) | 图像处理、目标检测、分割、视频处理、SLAM、CNN、视觉Transformer、扩散模型、流匹配、VR/AR | 已完成 |
| 09 | [音频与语音](chapter%2009%3A%20audio%20and%20speech/01.%20digital%20signal%20processing.md) | 数字信号处理、自动语音识别、文本转语音、语音与声学活动检测、说话人分离、源分离、主动降噪、WaveNet、Conformer | 已完成 |
| 10 | [多模态学习](chapter%2010%3A%20multimodal%20learning/01.%20multimodal%20representations.md) | 融合策略、对比学习、CLIP、视觉语言模型、图像/视频分词、跨模态生成、统一架构、世界模型 | 已完成 |
| 11 | [自主系统](chapter%2011%3A%20autonomous%20systems/01.%20perception.md) | 感知、机器人学习、视觉-语言-动作模型、自动驾驶、太空机器人 | 已完成 |
| 12 | [图神经网络](chapter%2012%3A%20graph%20neural%20networks/01.%20geometric%20deep%20learning.md) | 几何深度学习、图论、GNN、图注意力机制、图Transformer、三维等变网络 | 已完成 |
| 13 | [计算与操作系统](chapter%2013%3A%20computing%20and%20OS/01.%20discrete%20maths.md) | 离散数学、计算机体系结构、操作系统、并发、并行、编程语言 | 已完成 |
| 14 | [数据结构与算法](chapter%2014%3A%20data%20structures%20and%20algorithms/00.%20foundations.md) | 大O表示法、递归、回溯、动态规划、数组、哈希、链表、栈、树、图、排序、二分查找 | 已完成 |
| 15 | [生产级软件工程](chapter%2015%3A%20production%20software%20engineering/01.%20linux%20and%20CMD.md) | Linux、Git、代码库设计、测试、CI/CD、Docker、模型服务、MLOps、监控、使用编码代理的最佳实践 | 已完成 |
| 16 | [SIMD与GPU编程](chapter%2016%3A%20SIMD%20and%20GPU%20programming/00.%20why%20C%2B%2B%20and%20how%20ML%20frameworks%20work.md) | 面向机器学习的C++、框架工作原理、硬件基础、ARM NEON/I8MM/SME2、x86 AVX、GPU/CUDA、Triton、TPU、RISC-V、Vulkan、WebGPU | 已完成 |
| 17 | [AI推理](chapter%2017%3A%20AI%20inference/01.%20quantisation.md) | 量化、高效架构、服务与批处理、边缘推理、推测解码、成本优化 | 已完成 |
| 18 | [ML系统设计](chapter%2018%3A%20ML%20systems%20design/01.%20systems%20design%20fundamentals.md) | 系统基础、云计算、分布式系统、ML生命周期、特征存储、A/B测试、推荐/搜索/广告/欺诈设计实例 | 已完成 |
| 19 | 应用人工智能 | 金融、医疗健康、蛋白质、药物发现中的人工智能 | 待完成 |
| 20 | 前沿人工智能 | 量子机器学习、神经形态机器学习、去中心化人工智能、太空数据中心、脑机接口 | 待完成 |

## 前言

新生婴儿的大脑是一个新初始化的神经网络，通过现实世界的数据和经验训练直至成年……直至永远。能够用法语流利交流并拥有完美口音，意味着接触到了优秀的法语和完美口音。同样，优秀的人工智能研究员和工程师具备出色的问题解决能力，意味着他们吸收了高质量的知识并拥有丰富的经验。

科瓦舍夫实验是一项长期的塞尔维亚研究，表明为期三年的高强度创造性问题解决训练可以显著提高智力，尤其是流体智力，提升10-15个IQ点。当然，天生高IQ是真实存在的，就像优质的权重初始化能带来更好的训练效果一样——先天与后天之争的实验结果也证明了这一点。

然而，高IQ个体的真正优势仅在于能更快地学习和识别模式。但重复使用一种模式可以使任何概念都变得绝对可学。查尔斯·达尔文被他的老师和父亲认为是一个非常普通、甚至低于平均水平的学生。他自称并不机智，感觉自己像一个"慢处理器"，需要时间来吸收数据。

在3到10岁之间，我的学习成绩很好，自然而然地理解概念，从不做笔记或复习。11到13岁之间我有点自大，用这种方式在一个80人的班级中跌到了下半部分。14到15岁之间，我开始像普通学生一样读书，在中学最后一个学期取得了第一名。早期学校课程与自然IQ配合得很好，但现实世界的才华源于高质量的知识摄入和执行力度。

事实上，大多数学习成绩好的学生只是更勤奋，但学术系统是为快速学习者设计的。这本纲要提供了一个全面且相互关联的知识流，以帮助世界上那些"达尔文们"更好地学习。你只需要初等数学基础和基本的Python编程知识，其他一切都会逐步掌握——只需阅读并相信这个过程！

## 如何更好地学习

大学第一学期，我同时选了17门课，成绩并不理想，于是我采用了一个技巧：

**第一阶段：课后累积阅读**
只阅读每张幻灯片/笔记的标题/大标题，合上书，然后在脑海中可视化并写出对该概念的解释。只重读你遗漏的部分，类似于机器学习中的掩码语言建模。重读之后，最终将概念用代码实现。这样你就能对每个概念形成肌肉记忆。

**第二阶段：考前影子阅读**
阅读每张幻灯片/笔记的副标题，合上书，然后在脑海中可视化并写出对该概念的解释。只重读你遗漏的部分，类似于机器学习中的掩码语言建模。重读之后，最终将概念用代码实现。这样你就能对每个概念形成肌肉记忆。

这个方法对我不太自信的朋友们非常有效。事实上，其中一位朋友在高等工程数学（涵盖海森矩阵和优化）这门课上超过了我。她现在在一家大型石油天然气公司工作。灵魂的意愿比我们与之工作的身体更重要（罗森塔尔实验）。

## 关于作者

查看GitHub个人资料！

## 引用

```bibtex
@book{ndubuaku2025compendium,
  title     = {Maths, CS & AI Compendium},
  author    = {Henry Ndubuaku},
  year      = {2026},
  publisher = {GitHub},
  url       = {https://github.com/HenryNdubuaku/maths-cs-ai-compendium}
}
```
