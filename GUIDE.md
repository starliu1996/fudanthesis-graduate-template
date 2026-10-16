# 常用写法速查

本模板的主入口是 `main.tex`。所有示例均可直接编译；用自己的内容替换占位文字与示例图，而不是从网络或其他论文直接复制。

本说明区分规范要求与模板示例。学校 2026 年 6 月规范明确要求的正文中文宋体、英文和数字 Times New Roman、小四字号及 20 磅行距，由默认配置落实；封面、中英文摘要和声明页按规范附件样本排版。图表题字体、三线表、表注形式和子图布局在该规范中没有具体规定，模板示例可以按学院或学科要求替换。

## 论文结构

默认结构如下，学院有不同要求时以当年通知为准：

1. 封面和指导小组成员页由 `fduthesis` 自动生成。
2. 目录、中英文摘要、插图清单、附表清单和符号表属于前置部分。
3. 绪论、方法、结果、结论属于正文。
4. 补充材料和成果列表属于附录部分。
5. 参考文献、致谢和声明页属于后置部分；`assets/declaration.pdf` 由类文件自动追加为最后一页。

新增正文章节时，先创建 `chapters/05-discussion.tex`，再在 `main.tex` 的 `\mainmatter` 后增加：

```tex
\include{chapters/05-discussion}
```

完整章节以 `\chapter{...}` 开头，使用 `\include` 导入；它会在文件前后清理分页及浮动图表，并生成独立的章节辅助文件。摘要、符号表、致谢等片段仍用 `\input`。仅需临时编译部分章节时，可在导言区使用 `\includeonly{chapters/05-discussion}`；发布或提交前应取消该命令并完整编译。

## 前置部分

### 摘要与关键词

学校规范规定：中文撰写的论文，中文摘要一般为 300～1000 字；非中文撰写的论文，中文摘要一般为 1000～3000 字。英文摘要另起一页，置于中文摘要之后，内容宜与中文摘要对应。中英文关键词各 3～8 个，含义应对应。摘要正文在 `chapters/00-abstract.tex`，关键词在 `main.tex` 的 `keywords` 与 `keywords*` 中填写。

摘要局部排版参照规范附件：中文采用 Word 样本导出的 10.56 磅、15.6 磅基线间距，英文小四、20 磅基线间距；正文和关键词左对齐，题目居中。不要将中文摘要直接套用正文字号和行距；随包短摘要仅是占位示例。

### 插图清单与附表清单

`main.tex` 已启用 `\listoffigures` 与 `\listoftables`。每个带 `\caption{...}` 的 `figure` 或 `table` 会自动进入对应清单，重新完整编译后编号和页码会更新。

图表在清单中的名称可以独立于正文图表题设置，写成 `\caption[清单中的名称]{正文中的完整图表题}`。例如，`chapters/02-method.tex` 中的单图使用：

```tex
\caption[示例单图]{示例单图：请用自己的图片和说明替换}
```

插图清单显示“示例单图”，正文图下显示“示例单图：请用自己的图片和说明替换”，编号与页码仍自动生成。方括号内可自行命名，不要求只是正文图题的缩写；省略方括号时，清单默认使用完整图表题。表格的附表清单名称也采用相同写法。

组合图只需在总图题中设置清单名称，见 `chapters/03-results.tex`；子图的空 `\caption{}` 用于生成 `(a)`、`(b)`，保持不变。修改清单名称后，重新运行完整编译命令；直接使用 XeLaTeX 时至少编译两遍，以更新清单。

### 符号表

符号表位于 `chapters/00-notation.tex`，默认在摘要和图表清单之后、正文之前。每一行的格式是：

```tex
$\mathbf{x}$ & 符号含义 \\
```

若论文没有较多的变量、缩略语或符号，删除 `main.tex` 中的 `\input{chapters/00-notation}` 即可。不要把符号表做成图片。

## 图片

图片格式、命名和单图/子图完整示例见 [figures/README.md](figures/README.md)。实际写作中遵守以下原则：

1. 流程图和曲线图优先导出 PDF；截图优先 PNG；实物照片使用高质量 JPG。
2. 文件放在 `figures/`，推荐文件名如 `system-model.pdf`，代码写作 `\includegraphics[width=0.72\textwidth]{system-model}`。
3. 正文先引用，再放置图片。用 `图~\ref{fig:...}` 引用，绝不手写编号。
4. 图题说明对象、变量、条件和必要单位；图片内的文字应在印刷尺寸下清楚可读。
5. 多个相互独立的图不要强行拼成子图；同一问题下的对照面板才使用子图。

默认图题位于图下，字号为五号（10.5 磅），使用正文字族；默认 Windows 配置下中文为宋体、英文和数字为 Times New Roman。子图示例用空的 `\caption{}` 自动生成 `(a)`、`(b)`，具体含义统一放在总图题中。图表题编号、字号和标签间距由类文件生成，通常无需逐图调整。

## 表格

完整的三线表、表注和宽表示例在 `chapters/03-results.tex`。模板推荐使用 `booktabs` 提供的 `\toprule`、`\midrule` 和 `\bottomrule`，采用无竖线的三线表。这是示例的排版选择，学校规范并未统一禁止所有其他表格形式。

普通表格沿用正文小四（12 磅），对照表和宽表示例显式使用 `\small` 切换为五号（10.5 磅），并在需要强调层级时加粗表头。表题位于表上，保持类文件原有的五号无衬线字体；默认 Windows 配置下中文为黑体、英文和数字为 Arial。表题字体与表内字体分别控制。

```tex
\begin{table}[htbp]
  \centering
  \caption{表题写在表格上方}
  \label{tab:example}
  \begin{tabular}{lcc}
    \toprule
    方法 & 准确率 / \% & 耗时 / s \\
    \midrule
    方法 A & 90.1 & 1.2 \\
    \bottomrule
  \end{tabular}
\end{table}
```

表注用 `\thesistablenote{说明文字}`，放在 `\end{tabular}` 或 `\end{tabularx}` 之后、`\end{table}` 之前。该命令由 `template-layout.sty` 提供，自动添加“注：”，使用小五（9 磅），在普通 `table` 中按正文可用宽度左对齐排版，不随窄表收窄；参数内无需再次写“注：”。例如：

```tex
\thesistablenote{数值为多次实验的均值；各指标的单位见列标题。}
```

这是模板提供的无编号表注示例，规范没有统一规定表注形式。若改用 `threeparttable` 的字母注释，应在对应单元格添加 `\tnote{a}`，并与 `\item[a]` 配对；该环境中的表注通常与表格等宽。

宽表优先使用 `tabularx` 的 `Y` 列自动换行，示例已在模板中启用。确需更紧凑时，在当前 `table` 内显式使用 `\small`；不要把整个表格无限缩小。跨页长表不要放进 `table` 浮动体，使用 `longtable`：

```tex
\begin{longtable}{lcc}
  \caption{跨页长表标题}\label{tab:long}\\
  \toprule
  项目 & 指标一 & 指标二 \\
  \midrule
  \endfirsthead
  \toprule
  项目 & 指标一 & 指标二 \\
  \midrule
  \endhead
  % 在此继续填写数据行
  \bottomrule
\end{longtable}
```

表格中的数据单位放在列标题，统计显著性、缩写解释和数据来源放进表注；不要将 Word 或 Excel 表格截图插入论文。

## 段落、致谢与脚注

正文小四字的普通段落首行缩进两个汉字，正常行间距为 20 磅。模板使用 `20bp` 对应 Word 的 20 磅；LaTeX 的 `20pt` 略小于该值。标题、图表题和其他局部环境有自己的字号及间距，不应通过增加空行或反复插入 `\vspace` 模拟正文行距。

致谢正文在 `chapters/acknowledgements.tex` 中填写，用空行分段。致谢环境已在内部处理参考文献列表结束时遗留的段落状态，因此紧跟参考文献时，第一段与后续段落都按正文缩进。无需手动添加空格、`\indent` 或 `\hspace`。

正文脚注使用标准命令，自动编号并出现在当前页底部：

```tex
这里是需要补充说明的正文。\footnote{这里填写补充说明。}
```

当前 `footnote-style = xits` 是模板选项；规范只建议采用脚注，没有指定编号图形。表注使用前述 `\thesistablenote`，不与页脚脚注混用。可编译脚注示例见 `chapters/01-introduction.tex`。

## 公式、交叉引用、定理与算法

需要编号并在后文引用的公式使用：

```tex
\begin{equation}
  y = ax+b,
  \label{eq:line}
\end{equation}

由式~\eqref{eq:line} 可得……
```

图、表、章节、附录和算法的标签分别使用 `fig:`、`tab:`、`chap:`、`app:`、`alg:` 前缀，例如 `\label{fig:system-model}`。符号和标签采用 ASCII 名称，避免重名和跨文件问题。

类文件已提供 `definition`、`theorem`、`lemma`、`corollary`、`example` 和 `proof` 环境。算法使用 `algorithm` 与 `algpseudocode`，可编译示例见 `chapters/02-method.tex` 和 `chapters/03-results.tex`。

## 参考文献

把文献条目放入 `references.bib`，正文中写：

```tex
已有研究表明该方法具有可复现性~\cite{lamport1994latex}。
```

当前模板使用 `bib-backend = bibtex` 和数值制 `bib-style = numerical`。常用命令为 `\cite{key}`；若需要作者名或页码，请先在本地用实际条目测试 `\citet{key}`、`\citep{key}` 或 `\cite[23]{key}` 的输出。`references.bib` 提供图书、期刊、会议论文和在线资料的字段范例。

2026 年 9 月校核版随包固定 `gbt7714` v3.1.0，使用 GB/T 7714—2025 样式。类文件已将 `numerical` 映射到新的 `gbt7714-numeric.bst`；著者—出版年制设 `bib-style = author-year`，对应 `gbt7714-authoryear.bst`。保留主目录中的这两个 `.bst` 和 `gbt7714.sty`，避免本机较旧的 TeX 安装退回 2015 版。来源与许可证见 THIRD-PARTY.md。

本包的 2025 版配置和验证针对 BibTeX；不要只把 `bib-backend` 改为 `biblatex` 就认为也已升级。原类中的 BibLaTeX 分支仍引用 `gb7714-2015`，如需 Biber/BibLaTeX，必须另行配置适用的新版样式并重新核对。

不要直接编辑 `build/main.bbl`。修改 `.bib` 后执行完整的 `latexmk` 命令，让 BibTeX、目录和编号自动更新。

## 编译与排错

在模板根目录运行：

```powershell
latexmk -xelatex -outdir=build main.tex
```

使用 LuaLaTeX 时，在独立构建目录执行 `latexmk -lualatex -outdir=build-lua main.tex`，避免与 XeLaTeX 的中间文件混用。

- 用 XeLaTeX 或 LuaLaTeX，不能用 pdfLaTeX。
- 改图、改表、改目录、改标签或改参考文献后，重新运行上述完整命令。
- 报“File not found”时，先检查文件是否在 `figures/`、是否使用了推荐文件名、扩展名是否正确。
- 报“Undefined reference/citation”时，先检查标签或文献键拼写，再完整编译。
- PDF 的声明页版本、封面字段、签字要求和论文结构以学院当年通知为准。

## 打印与装订

学校规范要求双面打印。封面使用云彩纸：博士为淡棕色，硕士为淡蓝绿色。书脊印论文题目、作者姓名、复旦大学；采用线装或热胶装订，不采用钉子装订。签署的独创性声明和使用授权声明放在封三，即封底同一张纸的背面。PDF 的最后一页与装订后封三的物理位置需由印制方正确对应。

## 字体与系统

默认配置 `font = times*, cjk-font = windows` 使用 Times New Roman、Arial、Courier New 和宋体、黑体等中文系统字体。按学校正文要求制作提交稿时，需确保实际使用的中文字体为宋体、英文和数字为 Times New Roman；不能仅凭外观相近或编译成功判断字体符合要求。

在缺少这些字体的系统中，以下配置可以用于临时编译和内容预览：

```tex
font = times,
cjk-font = fandol,
```

该配置使用替代字体，不能视为宋体和 Times New Roman 的等价配置。macOS 的 `cjk-font = mac` 同样可能选用不同中文字体。跨系统制作最终稿时，应合法安装所需字体并正确配置，或回到具有所需字体的环境重新完整编译，再检查 PDF 内实际嵌入的字体及版面。

