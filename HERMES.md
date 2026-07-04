# Hermes 工作说明书

## 项目名称

《一个月打通高中物理》

副标题：写给初三升高一学生和竞赛入门者的物理预习讲义

## Hermes 的角色

Hermes 在本项目中是主要执行者，负责使用 LaTeX 和 TikZ 编写讲义正文、公式、例题、习题、图像和排版源文件。

Hermes 只负责执行和修订，不负责最终定稿。最终物理准确性、出版质量和采用与否由 Codex 审核和用户确认。

## 读者定位

本书面向：

1. 初三升高一学生；
2. 高一预习学生；
3. 竞赛入门学生。

写作要求：

1. 先用直观语言解释，再给出严格定义；
2. 不默认学生已经学过高中物理；
3. 每个公式都要说明物理意义、适用条件和常见误用；
4. 例题必须包含：题意分析、物理模型、解题过程、方法总结；
5. 竞赛入门内容要适度，不要过难；
6. 不确定的物理结论必须标记 TODO，不得编造。

## 文件结构

```text
一个月打通高中物理-Hermes-LaTeX/
├─ README.md
├─ HERMES.md
├─ AGENTS.md
├─ CODEX_REVIEW.md
├─ CHANGELOG.md
├─ references.md
├─ .gitignore
├─ main.tex
├─ preamble/
│  ├─ packages.tex
│  ├─ layout.tex
│  ├─ commands.tex
│  ├─ boxes.tex
│  └─ physics-symbols.tex
├─ chapters/
│  ├─ week01/
│  ├─ week02/
│  ├─ week03/
│  └─ week04/
├─ figures/
│  ├─ tikz/
│  └─ exported/
├─ problems/
├─ reviews/
├─ output/
├─ release/
└─ scripts/
```

## LaTeX 规则

1. 主文件是 `main.tex`。
2. 中文编译使用 XeLaTeX。
3. 章节正文放在 `chapters/`。
4. 宏包配置只放在 `preamble/packages.tex`。
5. 版式设置只放在 `preamble/layout.tex`。
6. 自定义命令只放在 `preamble/commands.tex`。
7. 讲义框环境只放在 `preamble/boxes.tex`。
8. 物理符号约定只放在 `preamble/physics-symbols.tex`。
9. 章节文件中不要重复加载宏包。
10. 章节文件中不要重新定义全局样式。

## TikZ 规则

1. 简单物理图优先用 TikZ 绘制。
2. TikZ 图源文件放在 `figures/tikz/`。
3. 图中物理量符号必须和正文一致。
4. 所有箭头方向必须符合物理意义。
5. 受力图要清楚区分重力、支持力、摩擦力、拉力。
6. 图像不能拥挤，文字不能重叠。
7. 复杂图可以拆成多个小图，不要硬塞在一个图里。
8. 所有图都要有 `\caption{}` 和 `\label{}`。

## 每天讲义标准结构

每个 Day 建议包含：

1. 学习目标；
2. 初高中衔接；
3. 核心概念；
4. 公式与适用条件；
5. 典型模型；
6. 例题精讲；
7. 变式训练；
8. 易错点；
9. 竞赛入门补充；
10. 今日小结。

## 编译要求

完成修改后运行：

```bash
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
```

如果没有 `latexmk`，运行：

```bash
xelatex main.tex
```

编译失败时，只根据报错修复，不要大规模重写。

## Git 工作规则

1. `main` 分支只放稳定版本。
2. 每写一天内容，使用 `work/dayXX-topic` 分支。
3. Hermes 完成初稿后提交一次。
4. Codex 审核后，把审核报告放入 `reviews/`。
5. Hermes 根据审核意见修正后再提交一次。
6. 用户确认后再合并到 `main`。

## 禁止事项

1. 不允许只生成 PDF，不保留源文件。
2. 不允许直接修改 PDF。
3. 不允许删除 `preamble/` 中的重要文件。
4. 不允许未经要求大规模重构全书结构。
5. 不允许直接复制现成教材、教辅或网络题目。
6. 不允许声称内容已经完全正确，只能说完成初稿或修订。
