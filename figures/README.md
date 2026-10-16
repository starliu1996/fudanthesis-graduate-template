# 插图目录说明

`main.tex` 已设置：

```tex
\graphicspath{{figures/}}
\DeclareGraphicsExtensions{.pdf,.png,.jpg,.jpeg}
```

因此图片放入本目录后，正文中通常只需写不带路径和扩展名的文件名，例如：

```tex
\includegraphics[width=0.74\textwidth]{example-plot-a}
```

## 推荐格式

| 图像类型 | 推荐格式 | 说明 |
| --- | --- | --- |
| 流程图、结构图、绘图软件导出的曲线图 | PDF | 矢量格式，放大后仍清晰，优先使用。 |
| 屏幕截图、热力图、栅格化数据图 | PNG | 无损压缩，适合文字、线条和数据图。 |
| 实物照片、实验照片 | JPG/JPEG | 文件较小，导出时使用高质量设置。 |
| SVG、EPS | 先转为 PDF 或 PNG | XeLaTeX 不建议直接插入 EPS；SVG 需先转换。 |

按最终印刷尺寸准备栅格图时，建议有效分辨率不低于 300 dpi。这里的格式和分辨率是图片制作建议，学校 2026 年 6 月规范未统一规定这些参数。避免从 Word、PPT 或聊天软件中反复截图和压缩图片。

## 文件命名

- 使用 ASCII 英文字母、数字、连字符或下划线，例如 `system-architecture.pdf`、`experiment-01.png`。
- 为方便跨平台协作，建议避免空格、中文名或同名但不同扩展名的文件；这是文件管理建议。
- 将原始绘图文件、数据和导出图片分开管理；提交论文时保留可编辑源文件。

## 单图与子图

单图示例：

```tex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.74\textwidth]{example-plot-a}
  \caption[示例单图]{示例单图：请用自己的图片和说明替换}
  \label{fig:single-plot}
\end{figure}

如图~\ref{fig:single-plot} 所示，正文应先说明为什么需要这张图。
```

`\caption[插图清单名称]{正文图题}` 的方括号内可单独取名，花括号内填写图片下方的完整说明；省略方括号时，清单沿用完整图题。上述示例在插图清单中显示“示例单图”，正文图题保留完整说明。修改后需完整编译以更新清单。

两个相关面板使用 `subcaption` 子图环境，完整可编译示例见 `chapters/03-results.tex`。模板沿用原论文中常用的形式：子图下仅显示自动生成的 `(a)`、`(b)`，说明文字集中放在总图题中；整组图在插图清单中的名称写在总图题的方括号内。例如：

```tex
\begin{figure}[htbp]
  \centering
  \begin{subfigure}[b]{0.48\textwidth}
    \centering
    \includegraphics[width=\linewidth]{example-plot-a}
    \caption{}
    \label{fig:condition-a}
  \end{subfigure}
  \hfill
  \begin{subfigure}[b]{0.48\textwidth}
    \centering
    \includegraphics[width=\linewidth]{example-plot-b}
    \caption{}
    \label{fig:condition-b}
  \end{subfigure}
  \caption[两种条件比较]{两种条件比较：（a）条件 A；（b）条件 B。}
  \label{fig:conditions}
\end{figure}
```

上述标签是写法示例，复制到实际章节时应改成唯一名称，避免与模板自带示例重名。用 `图~\ref{fig:conditions}` 引用总图；用 `\subref{fig:condition-a}` 获取子图字母。

图题位于图片下方，`\label` 紧跟对应的 `\caption`，不要手工输入“图 1-1”。空的子图 `\caption{}` 仍生成编号，不能直接删掉它。若导入的图片已经含有 `(a)/(b)`，先清理重复标记，避免出现两套标签。

默认图题为五号（10.5 磅）正文字族；默认 Windows 配置下中文为宋体、英文和数字为 Times New Roman。子图标记由 `subcaption` 生成。这里的图题与子图排版沿用模板来源论文，并非学校规范对所有学科图形的统一硬性规定。图片内的字体、线宽、图例和坐标轴字号由绘图文件自身决定，修改 LaTeX 图题字号不会同步改变图内文字；应按最终插入尺寸检查其清晰度。

本目录的 `example-plot-a.png` 与 `example-plot-b.png` 仅用于演示。运行 `python figures/make-example-figures.py` 可以重新生成它们；实际论文应以自己的图片替换。
