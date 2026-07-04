# 《一个月打通高中物理》Hermes + LaTeX/TikZ 项目

本项目用于编写《一个月打通高中物理》讲义。

技术路线：

- Hermes：负责生成和修改 LaTeX/TikZ 源文件
- LaTeX：负责正文、公式、章节结构和出版级排版
- TikZ：负责高中物理示意图
- Codex：负责审核 Git diff、物理内容、LaTeX 编译和 TikZ 图像
- Git：负责版本管理

## 基本命令

进入项目：

```bash
cd ~/dongxingxi/一个月打通高中物理-Hermes-LaTeX
```

初始化 Git：

```bash
git init
git branch -M main
git config user.name "Dongxingxi"
git config user.email "xingxidecnu@gmail.com"
git add .
git commit -m "初始化《一个月打通高中物理》LaTeX/TikZ 项目"
```

编译：

```bash
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
```

如果没有 latexmk，可用：

```bash
xelatex main.tex
```

## Hermes 启动后固定提示

```text
请先阅读 HERMES.md，然后查看当前项目结构。接下来只在本项目目录内工作，不要修改项目外的文件。
```
