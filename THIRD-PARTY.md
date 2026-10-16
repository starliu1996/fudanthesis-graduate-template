# 来源与许可证

本包为非官方的复旦大学研究生学位论文 LaTeX 衍生模板，校核日期为 2026-09-25。学校规范来源与校核结论见 FORMAT-AUDIT.md。

本衍生版本的维护和问题反馈通过当前仓库的 Issues / Pull Requests 进行；下方列出的上游作者不负责本地修改。2026-09-27 公开发布整理补充了根目录 LICENSE、README 下载说明、缓存忽略规则和此维护说明，修正校核记录中的摘要字号文字，不改变已校核的排版设置。

## fduthesis

- 上游作者：Xiangdong Zeng。
- 上游版本基础：v0.9a（2023-05-27）。
- 原始源码和使用文档：https://github.com/stone-zeng/fduthesis/tree/v0.9a ，https://ctan.org/pkg/fduthesis 。
- 许可证：LPPL 1.3c 或更新版本，完整文本在 `licenses/LPPL-1.3c.txt`。
- `fduthesis.cls`、`fduthesis.def` 继承已有论文中的本地修订，包括封面字段、Word 默认页边距、摘要结构、目录和关键词等；本次再修复致谢首段、Word 磅值、可选封面人员类别以及参考文献样式兼容性。因此这些文件不是上游未经修改的发行版，上游作者不对本包的本地改动负责。
- `fudan-name.pdf`、`fudan-emblem.pdf`、`fudan-emblem-new.pdf` 保留上游模板资源。当前封面使用 `assets/spec-cover-logo.png`，直接提取自规范附件一的校名图；`assets/declaration.pdf` 直接提取自同一规范附件二的空白签字声明页。两项参考资源不包含封面个人字段或签名，不另行声明为上游 LaTeX 代码的许可证授权范围。

## gbt7714

- 作者：Zeping Lee。
- 固定版本：v3.1.0，发布日期 2026-09-15。
- 源码：https://github.com/zepinglee/gbt7714-bibtex-style/tree/v3.1.0 。
- 发行页：https://github.com/zepinglee/gbt7714-bibtex-style/releases/tag/v3.1.0 。
- 本包原样附带 `gbt7714.sty`、`gbt7714-numeric.bst`、`gbt7714-authoryear.bst`；后两者分别由上游 `gbt7714-bst.dtx` 的 `2025,numeric` 和 `2025,authoryear` 选项生成。
- 许可证：LPPL 1.3c 或更新版本，见 `licenses/LPPL-1.3c.txt`。版权和上游版本信息保留在各文件头部。
- 在模板根目录编译可优先加载随包版本，无需覆盖系统 TeX 安装中的旧包。

本包的说明、通用示例与 `template-layout.sty`、`template-cover.sty` 可按 LPPL 1.3c 或更新版本再分发和修改。发布衍生版本时保留来源、许可证和修改说明，不应声称这是学校官方模板或上游原版。
