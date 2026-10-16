# 复旦大学学位论文 LaTeX 模板

供复旦大学博士、硕士研究生使用的非官方 LaTeX 模板，按 2026 年 6 月修订的学位论文规范进行校核，基于 [fduthesis](https://github.com/stone-zeng/fduthesis)。支持 XeLaTeX / LuaLaTeX 和 GB/T 7714—2025 BibTeX 参考文献样式。

[PDF 预览](template-preview.pdf) · [使用指南](GUIDE.md) · [校核记录与适用范围](FORMAT-AUDIT.md) · [来源与许可证](THIRD-PARTY.md)

点击仓库右上方 **Code → Download ZIP** 下载并解压，或者使用 **Use this template** 创建自己的论文仓库。正文、摘要、封面和文献中的占位内容都需要替换。

这是一个可直接修改、完整编译的毕业论文模板包。它不包含原论文的个人信息、章节内容、实验数据或参考文献；默认展示封面、摘要、插图清单、附表清单、符号表、图、表、公式、定理、算法、附录、成果、参考文献、致谢和声明页。

本包是基于 `fduthesis` 的非官方衍生模板，当前以《复旦大学博士、硕士学位论文规范（2026年6月修订版）》为唯一排版依据。修订依据、标准样本页码、测量结果和仍未规定的项目见 [FORMAT-AUDIT.md](FORMAT-AUDIT.md)。图表题、三线表、表注和子图在该规范中没有具体规定，模板对这些项目只提供可替换示例。

先阅读 [GUIDE.md](GUIDE.md)，其中提供图片格式、表格、符号表、算法、公式、引用和排错的可复制写法。图片的专门说明见 [figures/README.md](figures/README.md)。

## 快速开始

1. 使用 UTF-8 编码打开 `main.tex`，在 `\fdusetup{ info = { ... } }` 中填写题目、姓名、导师、专业、培养单位、学号和提交日期。
2. 博士论文保留 `type=doctor,twoside`；硕士论文改为 `type=master,twoside`。按实际情况填写 `degree=academic` 或 `degree=professional`。同等学力人员或英文项目填写 `applicant-type`；普通学生留空。
3. 修改 `chapters/` 中的示例文本，删除不适用的章节或示例。新增整章后，在 `main.tex` 中加入 `\include{chapters/文件名}`，章内片段使用 `\input`。
4. 将图片放进 `figures/`，将文献条目放进 `references.bib`。
5. 在模板根目录运行：

```powershell
latexmk -xelatex -outdir=build main.tex
```

模板需使用 XeLaTeX 或 LuaLaTeX，不能用 pdfLaTeX。修改目录、图片、表格、标签或文献后都重新运行上述完整命令。

默认配置使用 Windows 的宋体和 Times New Roman。Overleaf / Linux 没有这些字体时，可暂设 `font = times, cjk-font = fandol` 预览内容；替代字体不等同于规范要求，提交前应在具备所需字体的环境编译。编译器选择 **XeLaTeX**，主文件选择 `main.tex`。

## 目录结构

| 路径 | 用途 |
| --- | --- |
| `main.tex` | 主文档、论文信息、宏包和章节顺序 |
| `template-layout.sty` | 图表标题位置和无编号表注命令 |
| `template-cover.sty` | 按规范附件一 A4 坐标排版封面 |
| `chapters/00-abstract.tex` | 中英文摘要 |
| `chapters/00-notation.tex` | 位于正文前的符号表 |
| `chapters/01-*` 至 `04-*` | 正文示例：引用、公式、图、表、定理、算法和讨论 |
| `chapters/appendix-a.tex` | 附录示例 |
| `references.bib` | BibTeX 文献数据库 |
| `gbt7714.sty`、`gbt7714-*.bst` | 随包固定版本的 GB/T 7714—2025 参考文献样式 |
| `THIRD-PARTY.md`、`licenses/` | 上游出处、许可证和本地修改说明 |
| `figures/` | 图片及图片格式说明 |
| `assets/declaration.pdf` | 输出 PDF 的最后一页 |
| `assets/spec-cover-logo.png` | 从规范附件一提取的校名图 |
| `template-preview.pdf` | 已验证的编译预览 |

## 声明页

`main.tex` 已设置：

```tex
declaration-page = {assets/declaration.pdf},
```

`fduthesis` 会在 `\end{document}` 后自动追加该 PDF，因此它始终是最后一页。不要手工写 `\includepdf` 或 `\makecoveriii`。学校更新声明页时，以新的单页 A4 PDF 覆盖 `assets/declaration.pdf`，文件名保持不变。

随包声明页的签字栏为空，编译成功不代表已经签署。作者须按学校要求完成作者、导师签名和日期；需要电子签署页时，用本人的签署扫描件替换该文件后重新编译。不要在共享模板包中放入个人签名。

当前声明页直接提取自该规范的附件二。不要使用其他论文已填姓名或已签署的声明页。

## 环境说明

模板在 TeX Live 2025 上验证。推荐 XeLaTeX；LuaLaTeX 的使用方式见 GUIDE。默认 `font = times*, cjk-font = windows` 使用宋体和 Times New Roman。macOS 的 `mac` 和 Linux 的 `fandol` 可用于草稿编译，但字体不等同于规范指定字体；最终版须在具备相应字体的环境中重新生成。

封面由 `template-cover.sty` 按规范附件一的 A4 坐标、字号和信息行距排版。题目长度、填写内容和是否换行会改变文字宽度；涉密论文封面仍应向学位办取得专用样本。附录、成果和符号表为可选示例。封面字段、提交日期、摘要长度、关键词、声明签署及双面装订要求仍需作者在提交前核对。

当前封面采用固定位置，较长的中英文题目或培养单位名称可能超出版面，尚未实现自动换行适配；填写后必须检查封面。默认 `bib-backend = bibtex` 已配置 2025 版样式，切换为 BibLaTeX 需要另外配置。本仓库不代表学校官方认证，院系的最新要求优先。

## 许可证与贡献

LaTeX 代码、文档和通用示例按 [LPPL 1.3c 或后续版本](LICENSE) 发布，保留上游作者署名。规范中的校名图、声明文字等参考资源保留其原有权利，不因代码开源而授予商标或其他额外权利；完整出处见 [THIRD-PARTY.md](THIRD-PARTY.md)。使用本模板撰写的论文正文归作者所有。

欢迎通过 Issues 反馈版式问题，或提交 Pull Request。反馈时请附 TeX 发行版、编译器、最小复现代码和对应规范条款，并先移除姓名、学号、签名及未公开论文内容。
