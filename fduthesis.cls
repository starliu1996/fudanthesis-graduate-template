%%
%% This is file `fduthesis.cls',
%% Local graduate-template derivative; audit corrections dated 2026-09-25.
%% This copy is not an unmodified upstream release. See FORMAT-AUDIT.md.
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% fduthesis.dtx  (with options: `class')
%% 
%%     Copyright (C) 2017--2023 by Xiangdong Zeng <xdzeng96@gmail.com>
%% 
%%     This work may be distributed and/or modified under the
%%     conditions of the LaTeX Project Public License, either
%%     version 1.3c of this license or (at your option) any later
%%     version. The latest version of this license is in:
%% 
%%       http://www.latex-project.org/lppl.txt
%% 
%%     and version 1.3 or later is part of all distributions of
%%     LaTeX version 2005/12/01 or later.
%% 
%%     This work has the LPPL maintenance status `maintained'.
%% 
%%     The Current Maintainer of the upstream work is Xiangdong Zeng.
%%     This local derivative is maintained through this repository's Issues.
%% 
%%     This work consists of the files fduthesis.dtx,
%%                                     fduthesis-doc.dtx,
%%                                     fduthesis-logo.dtx,
%%               and the derived files fduthesis.ins,
%%                                     fduthesis.cls,
%%                                     fduthesis-en.cls,
%%                                     fduthesis.def,
%%                                     fdudoc.cls,
%%                                     fdulogo.sty,
%%                                     fdulogo-example.tex,
%%                                     fduthesis-cover.tex,
%%                                     fduthesis-en.tex,
%%                                     fudan-emblem.pdf,
%%                                     fudan-emblem-new.pdf,
%%                                     fudan-name.pdf,
%%                                     fduthesis.pdf,
%%                                     fduthesis-en.pdf,
%%                                     fduthesis-code.pdf,
%%                                 and README.md.
%% 
\NeedsTeXFormat{LaTeX2e}[2020/10/01]
\GetIdInfo $Id: fduthesis.dtx 0.9a 2023-05-27 12:00:00Z Xiangdong Zeng <xdzeng96@gmail.com> $
  {Thesis template for Fudan University}
\ProvidesExplClass{\ExplFileName}
  {\ExplFileDate}{\ExplFileVersion}{\ExplFileDescription}
\ClassInfo{fduthesis}{Local~graduate-template~derivative~2026-09-25;
  ~see~FORMAT-AUDIT.md~and~THIRD-PARTY.md}
\RequirePackage { xtemplate, l3keys2e }
\msg_new:nnn { fduthesis } { l3-too-old }
  {
    Package~ "#1"~ is~ too~ old. \\\\
    Please~ update~ an~ up-to-date~ version~ of~ the~ bundles \\
    "l3kernel"~ and~ "l3packages"~ using~ your~ TeX~ package \\
    manager~ or~ from~ CTAN.
  }
\clist_map_inline:nn { xtemplate, l3keys2e }
  {
    \@ifpackagelater {#1} { 2020/07/17 }
      { } { \msg_error:nnn { fduthesis } { l3-too-old } {#1} }
  }
\msg_new:nnn { fduthesis } { unsupported-engine }
  {
    The~ fduthesis~ class~ requires~ either~ XeTeX~ or~ LuaTeX. \\\\
    "#1"~ is~ not~ supported~ at~ present.~ You~ must~ change \\
    your~ typesetting~ engine~ to~ "xelatex"~ or~ "lualatex".
  }
\sys_if_engine_xetex:F
  {
    \sys_if_engine_luatex:F
      {
        \msg_fatal:nnx { fduthesis } { unsupported-engine }
          { \c_sys_engine_str }
      }
  }
\box_new:N   \l__fdu_tmpa_box
\clist_new:N \l__fdu_tmpa_clist
\dim_new:N   \l__fdu_tmpa_dim
\skip_new:N  \l__fdu_tmpa_skip
\tl_new:N    \l__fdu_tmpa_tl
\tl_new:N    \l__fdu_tmpb_tl
\tl_new:N \g__fdu_thesis_type_tl
\clist_new:N \g__fdu_to_ctexbook_clist
\clist_new:N \g__fdu_to_hyperref_clist
\bool_new:N \g__fdu_twoside_bool
\bool_set_true:N \g__fdu_twoside_bool
\bool_new:N \g__fdu_draft_bool
\tl_new:N \g__fdu_config_tl
\cs_generate_variant:Nn \file_input:n          { V   }
\cs_generate_variant:Nn \int_to_arabic:n       { v   }
\cs_generate_variant:Nn \keys_define:nn        { nx  }
\cs_generate_variant:Nn \prop_item:Nn          { No  }
\cs_generate_variant:Nn \regex_replace_all:nnN { nnc }
\prg_generate_conditional_variant:Nnn \tl_if_eq:nn { Vn } { T, TF }
\cs_new:Npn \__fdu_quad:  { \skip_horizontal:n { 1 em } }
\cs_new:Npn \__fdu_qquad: { \skip_horizontal:n { 2 em } }
\cs_new_protected:Npn \__fdu_vspace:N #1
  {
    \dim_set_eq:NN \l__fdu_tmpa_dim \prevdepth
    \hrule height \c_zero_dim
    \nobreak
    \skip_vertical:N #1
    \skip_vertical:N \c_zero_skip
    \dim_set_eq:NN \prevdepth \l__fdu_tmpa_dim
  }
\cs_new_protected:Npn \__fdu_vspace:n #1
  {
    \skip_set:Nn \l__fdu_tmpa_skip {#1}
    \__fdu_vspace:N \l__fdu_tmpa_skip
  }
\cs_generate_variant:Nn \__fdu_vspace:N { c }
\cs_new:Npn \__fdu_symbol:n #1 { \tex_char:D #1 \scan_stop: }
\cs_new:Npn \__fdu_arabic:n #1
  { \int_to_arabic:v { c@ #1 } }
\cs_new_protected:Npn \__fdu_gadd_ltxhook:nn #1#2
  { \hook_gput_code:nnn {#1} { . } {#2} }
\hook_gset_rule:nnnn { begindocument/before } { . } { < } { xeCJK }
\cs_new_protected:Npn \__fdu_patch_cmd:Nnn #1#2#3
  {
    \ctex_patch_cmd_once:NnnnTF #1 { } {#2} {#3}
      { } { \ctex_patch_failure:N #1 }
  }
\cs_new_protected:Npn \__fdu_appto_cmd:Nn #1#2
  {
    \ctex_appto_cmd:NnnTF #1 { } {#2}
      { } { \ctex_patch_failure:N #1 }
  }
\cs_new_protected:Npn \__fdu_define_fn_style:nn #1#2
  { \tl_const:cn { c__fdu_fn_style_ #1 _tl } {#2} }
\cs_new_protected:Npn \__fdu_define_punct:nn #1#2
  { \tl_const:cn { c__fdu_ #1 _tl } {#2} }
\cs_new_protected:Npn \__fdu_define_name:nn #1#2
  { \tl_const:cn { c__fdu_name_ #1 _tl } {#2} }
\cs_new_protected:Npn \__fdu_define_name:nnn #1#2#3
  {
    \tl_const:cn { c__fdu_name_ #1    _tl } {#2}
    \tl_const:cn { c__fdu_name_ #1 _en_tl } {#3}
  }
\cs_new:Npn \__fdu_msg_new:nn  { \msg_new:nnn      { fduthesis } }
\cs_new:Npn \__fdu_error:n     { \msg_error:nn     { fduthesis } }
\cs_new:Npn \__fdu_error:nn    { \msg_error:nnn    { fduthesis } }
\cs_new:Npn \__fdu_error:nx    { \msg_error:nnx    { fduthesis } }
\cs_new:Npn \__fdu_error:nnn   { \msg_error:nnnn   { fduthesis } }
\cs_new:Npn \__fdu_error:nnnn  { \msg_error:nnnnn  { fduthesis } }
\cs_new:Npn \__fdu_warning:n   { \msg_warning:nn   { fduthesis } }
\cs_new:Npn \__fdu_warning:nn  { \msg_warning:nnn  { fduthesis } }
\cs_new:Npn \__fdu_warning:nxx { \msg_warning:nnxx { fduthesis } }
\cs_new:Npn \__fdu_info:nx     { \msg_info:nnx     { fduthesis } }
\keys_define:nn { fdu / option }
  {
    type .choices:nn =
      { doctor, master, bachelor }
      { \tl_set_eq:NN \g__fdu_thesis_type_tl \l_keys_choice_tl },
    type .value_required:n = true,
    type .initial:n = bachelor,
    oneside .value_forbidden:n = true,
    twoside .value_forbidden:n = true,
    oneside .code:n =
      {
        \clist_gput_right:Nn \g__fdu_to_ctexbook_clist { oneside }
        \bool_set_false:N    \g__fdu_twoside_bool
      },
    twoside .code:n =
      {
        \clist_gput_right:Nn \g__fdu_to_ctexbook_clist { twoside }
        \bool_set_true:N     \g__fdu_twoside_bool
      },
    draft .choice:,
    draft / true  .code:n =
      {
        \bool_set_true:N     \g__fdu_draft_bool
        \clist_gput_right:Nn \g__fdu_to_ctexbook_clist { draft }
      },
    draft / false .code:n =
      { \bool_set_false:N    \g__fdu_draft_bool },
    draft .default:n = true,
    draft .initial:n = false,
    config .tl_set:N = \g__fdu_config_tl,
    unknown .code:n = { \__fdu_error:n { unknown-option } }
  }
\__fdu_msg_new:nn { unknown-option }
  { Class~ option~ "\l_keys_key_str"~ is~ unknown. }
\ProcessKeysOptions { fdu / option }
\file_input:n { fduthesis.def }
\__fdu_msg_new:nn { load-config-file }
  { You~ are~ loading~ config~ file~ "#1". }
\tl_if_empty:NF \g__fdu_config_tl
  {
    \__fdu_info:nx { load-config-file } { \g__fdu_config_tl }
    \file_input:V \g__fdu_config_tl
  }
\PassOptionsToClass
  {
    UTF8,
    heading    = true,
    fontset    = none,
    zihao      = -4,
    linespread = \c__fdu_line_spread_fp,
    \g__fdu_to_ctexbook_clist
  }
  { ctexbook }
\clist_map_inline:nn
  {
    { no-math           } { fontspec },
    { perpage           } { footmisc },
    { amsmath, thmmarks } { ntheorem }
  }
  { \PassOptionsToPackage #1 }
\LoadClass { ctexbook }
\RequirePackage
  {
    amsmath,
    unicode-math,
    geometry,
    fancyhdr,
    footmisc,
    ntheorem,
    graphicx,
    longtable,
    caption,
    xcolor
  }
\cs_new_protected:Npn \__fdu_check_package:nnn #1#2#3
  {
    \@ifpackagelater {#1} {#2}
      { } { \__fdu_error:nnnn { package-too-old } { Package } {#1} {#3} }
  }
\cs_new_protected:Npn \__fdu_check_class:nnn #1#2#3
  {
    \@ifclasslater {#1} {#2}
      { } { \__fdu_error:nnnn { package-too-old } { Class } {#1} {#3} }
  }
\__fdu_msg_new:nn { package-too-old }
  {
    #1~ "#2"~ is~ too~ old. \\
    The~ fduthesis~ class~ only~ supports~ "#2" \\
    with~ a~ version~ higher~ than~ v#3. \\\\
    Please~ update~ an~ up-to-date~ version~ of~ it \\
    using~ your~ TeX~ package~ manager~ or~ from~ CTAN.
  }
\__fdu_check_class:nnn { ctexbook } { 2021/03/14 } { 2.5.6 }
\sys_if_engine_xetex:T
  { \__fdu_check_package:nnn { xeCJK } { 2020/05/01 } { 3.8.3 } }
\geometry
  {
    paper      = a4paper,
    % Exact geometry measured from the supplied Word standard: 72 bp top/bottom,
    % 87.6 bp left/right (A4 595.3 x 841.9 bp).
    vmargin    = 72 bp,
    hmargin    = 87.6 bp,
    headheight = 15 pt
  }
\bool_if:NT \g__fdu_draft_bool { \geometry { showframe } }
\tl_new:N \g__fdu_fontset_tl
\tl_new:N \g__fdu_cjk_fontset_tl
\keys_define:nn { fdu / style }
  {
    font .choices:nn =
      { garamond, libertinus, lm, palatino, times, times*, none }
      { \tl_set_eq:NN \g__fdu_fontset_tl \l_keys_choice_tl },
    font .value_required:n = true,
  }
\keys_define:nn { fdu / style }
  {
    cjk-font .choices:nn =
      { adobe, fandol, founder, mac, sinotype, sourcehan, windows, none }
      { \tl_set_eq:NN \g__fdu_cjk_fontset_tl \l_keys_choice_tl },
    cjk-font .value_required:n = true,
  }
\cs_new_protected:Npn \__fdu_setmainfont:nn #1#2
  { \__fontspec_main_setmainfont:nn {#2} {#1} }
\cs_new_protected:Npn \__fdu_setsansfont:nn #1#2
  { \__fontspec_main_setsansfont:nn {#2} {#1} }
\cs_new_protected:Npn \__fdu_setmonofont:nn #1#2
  { \__fontspec_main_setmonofont:nn {#2} {#1} }
\cs_new_protected:Npn \__fdu_setmathfont:nn #1#2
  { \__um_setmathfont:nn {#2} {#1} }
\cs_new_protected:Npn \__fdu_setCJKmainfont:nn #1#2
  { \__fdu_set_family:xnn { \CJKrmdefault } {#2} {#1} }
\cs_new_protected:Npn \__fdu_setCJKsansfont:nn #1#2
  { \__fdu_set_family:xnn { \CJKsfdefault } {#2} {#1} }
\cs_new_protected:Npn \__fdu_setCJKmonofont:nn #1#2
  { \__fdu_set_family:xnn { \CJKttdefault } {#2} {#1} }
\cs_new_protected:Npn \__fdu_set_cjk_font_kai:nn #1#2
  { \__fdu_set_family:nnn { fdu@kai } {#2} {#1} }
\cs_new_protected:Npn \fdu@kai
  { \__fdu_switch_family:n { fdu@kai } }
\sys_if_engine_xetex:TF
  {
    \tl_const:Nn \__fdu_cjk_font_options:
      { UprightFont = *, ItalicFont = *, AutoFakeBold = true }
  }
  {
    % LuaTeX/fontspec requires a numeric emboldening factor (default 1.5).
    % The boolean option above is specific to xeCJK.
    \tl_const:Nn \__fdu_cjk_font_options:
      { UprightFont = *, ItalicFont = *, AutoFakeBold = 1.5 }
  }
\cs_new_protected:Npx \__fdu_setCJKmainfont:n   #1
  { \__fdu_setCJKmainfont:nn   {#1} { \__fdu_cjk_font_options: } }
\cs_new_protected:Npx \__fdu_setCJKsansfont:n   #1
  { \__fdu_setCJKsansfont:nn   {#1} { \__fdu_cjk_font_options: } }
\cs_new_protected:Npx \__fdu_setCJKmonofont:n   #1
  { \__fdu_setCJKmonofont:nn   {#1} { \__fdu_cjk_font_options: } }
\cs_new_protected:Npx \__fdu_set_cjk_font_kai:n #1
  { \__fdu_set_cjk_font_kai:nn {#1} { \__fdu_cjk_font_options: } }
\sys_if_engine_xetex:TF
  {
    \cs_new_eq:NN \__fdu_set_family:nnn  \xeCJK_set_family:nnn
    \cs_new_eq:NN \__fdu_switch_family:n \xeCJK_switch_family:n
  }
  {
    \cs_new_eq:NN \__fdu_set_family:nnn  \ctex_ltj_set_family:nnn
    \cs_new_eq:NN \__fdu_switch_family:n \ctex_ltj_switch_family:n
  }
\cs_generate_variant:Nn \__fdu_set_family:nnn { x }
\cs_new_protected:Npn \__fdu_set_font_helper:n #1
  {
    \exp_args:Nc \RenewDocumentCommand { set #1 font } { O { } m O { } }
      {
        \ctex_at_end_preamble:n
          { \use:c { __fdu_set #1 font:nn } {##2} { ##1, ##3 } }
      }
  }
\clist_map_inline:nn { main, sans, mono, math }
  { \__fdu_set_font_helper:n {#1} }
\clist_map_inline:nn { CJKmain, CJKsans, CJKmono }
  { \__fdu_set_font_helper:n {#1} }
\cs_new_protected:Npn \__fdu_load_font_garamond:
  {
    \__fdu_setmainfont:nn { EBGaramond }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Italic,
        BoldItalicFont = *-BoldItalic
      }
    \__fdu_setsansfont:nn { LibertinusSans }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Italic,
      }
    \__fdu_setmonofont:nn { lmmonolt10 }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-oblique,
        BoldItalicFont = *-boldoblique
      }
    \__fdu_setmathfont:nn { Garamond-Math.otf } { }
  }
\cs_new_protected:Npn \__fdu_load_font_libertinus:
  {
    \__fdu_setmainfont:nn { LibertinusSerif }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Italic,
        BoldItalicFont = *-BoldItalic,
      }
    \__fdu_setsansfont:nn { LibertinusSans }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Italic,
      }
    \__fdu_setmonofont:nn { lmmonolt10 }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-oblique,
        BoldItalicFont = *-boldoblique
      }
    \__fdu_setmathfont:nn { LibertinusMath-Regular.otf } { }
  }
\cs_new_protected:Npn \__fdu_load_font_lm:
  { \__fdu_setmathfont:nn { latinmodern-math.otf } { } }
\cs_new_protected:Npn \__fdu_load_font_palatino:
  {
    \__fdu_setmainfont:nn { texgyrepagella }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-italic,
        BoldItalicFont = *-bolditalic
      }
    \__fdu_setsansfont:nn { LibertinusSans }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Italic,
        Scale          = MatchUppercase,
      }
    \__fdu_setmonofont:nn { lmmonolt10 }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-oblique,
        BoldItalicFont = *-boldoblique
      }
    \__fdu_setmathfont:nn { texgyrepagella-math.otf } { }
  }
\cs_new_protected:Npn \__fdu_load_font_times:
  {
    \__fdu_setmainfont:nn { XITS }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Italic,
        BoldItalicFont = *-BoldItalic,
      }
    \__fdu_setsansfont:nn { texgyreheros }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-italic,
        BoldItalicFont = *-bolditalic
      }
    \__fdu_setmonofont:nn { texgyrecursor }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-italic,
        BoldItalicFont = *-bolditalic,
        Ligatures      = CommonOff
      }
    \__fdu_setmathfont:nn { XITSMath-Regular.otf }
      { BoldFont = XITSMath-Bold.otf }
  }
\cs_new_protected:cpn { __fdu_load_font_ times* : }
  {
    \__fdu_setmainfont:nn { Times~ New~ Roman    } { }
    \__fdu_setsansfont:nn { Arial                } { }
    \__fdu_setmonofont:nn { Courier~ New         } { }
    \__fdu_setmathfont:nn { XITSMath-Regular.otf }
      { BoldFont = XITSMath-Bold.otf }
  }
\cs_new_protected:Npn \__fdu_load_cjk_font_adobe:
  {
    \__fdu_setCJKmainfont:n   { AdobeSongStd-Light       }
    \__fdu_setCJKsansfont:n   { AdobeHeitiStd-Regular    }
    \__fdu_setCJKmonofont:n   { AdobeFangsongStd-Regular }
    \__fdu_set_cjk_font_kai:n { AdobeKaitiStd-Regular    }
  }
\cs_new_protected:Npn \__fdu_load_cjk_font_fandol:
  {
    \__fdu_setCJKmainfont:nn   { FandolSong }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Bold
      }
    \__fdu_setCJKsansfont:nn   { FandolHei  }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Bold
      }
    \__fdu_setCJKmonofont:nn   { FandolFang }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Regular,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Regular
      }
    \__fdu_set_cjk_font_kai:nn { FandolKai  }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Regular,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Regular
      }
  }
\cs_new_protected:Npn \__fdu_load_cjk_font_founder:
  {
    \__fdu_setCJKmainfont:n   { FZShuSong-Z01  }
    \__fdu_setCJKsansfont:n   { FZHei-B01      }
    \__fdu_setCJKmonofont:n   { FZFangSong-Z02 }
    \__fdu_set_cjk_font_kai:n { FZKai-Z03      }
  }
\cs_new_protected:Npn \__fdu_load_cjk_font_mac:
  {
    \__fdu_setCJKmainfont:nn   { STSongti-SC }
      {
        UprightFont    = *-Light,
        BoldFont       = *-Bold,
        ItalicFont     = *-Light,
        BoldItalicFont = *-Bold
      }
    \__fdu_setCJKsansfont:nn   { STHeitiSC   }
      {
        UprightFont    = *-Medium,
        BoldFont       = *-Medium,
        ItalicFont     = *-Medium,
        BoldItalicFont = *-Medium
      }
    \__fdu_setCJKmonofont:n    { STFangsong  }
    \__fdu_set_cjk_font_kai:nn { STKaitiSC   }
      {
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Bold
      }
  }
\cs_new_protected:Npn \__fdu_load_cjk_font_sinotype:
  {
    \__fdu_setCJKmainfont:n   { STSong     }
    \__fdu_setCJKsansfont:n   { STHeiti    }
    \__fdu_setCJKmonofont:n   { STFangsong }
    \__fdu_set_cjk_font_kai:n { STKaiti    }
  }
\cs_new_protected:Npn \__fdu_load_cjk_font_sourcehan:
  {
    \__fdu_setCJKmainfont:nn { SourceHanSerifSC }
      {
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Bold
      }
    \__fdu_setCJKsansfont:nn { SourceHanSansSC  }
      {
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Bold
      }
    \__fdu_warning:n { source-han }
  }
\__fdu_msg_new:nn { source-han }
  { Font~ set~ "sourcehan"~ does~ not~ contain~ kaiti~ and~ fangsong. }
\cs_new_protected:Npn \__fdu_load_cjk_font_windows:
  {
    \__fdu_setCJKmainfont:n   { SimSun   }
    \__fdu_setCJKsansfont:n   { SimHei   }
    \__fdu_setCJKmonofont:n   { FangSong }
    \__fdu_set_cjk_font_kai:n { KaiTi    }
  }
\cs_new_protected:Npn \__fdu_load_font:
  {
    \use:c { __fdu_load_font_     \g__fdu_fontset_tl     : }
    \use:c { __fdu_load_cjk_font_ \g__fdu_cjk_fontset_tl : }
  }
\ctex_at_end_preamble:n { \__fdu_load_font: }
\keys_set:nn { unicode-math }
  {
    math-style = ISO,
    bold-style = ISO,
  }
\keys_define:nn { fdu / style }
  {
    font-size .choice:,
    font-size .value_required:n = true,
    font-size / -4 .code:n = { },
    font-size /  5 .code:n = { \ctex_file_input:n { ctex-c5size.clo } },
    fullwidth-stop .choice:,
    fullwidth-stop .value_required:n = true,
    fullwidth-stop / catcode .code:n =
      { \__fdu_set_fullwidth_stop_catcode: },
    fullwidth-stop / mapping .code:n =
      {
        \sys_if_engine_xetex:TF
          {
            \clist_gset:Nn \g__xeCJK_default_features_clist
              { Mapping = fullwidth-stop }
          }
          {
            \sys_if_engine_luatex:T
              {
                \__fdu_warning:n { mapping-not-available }
                \__fdu_set_fullwidth_stop_catcode:
              }
          }
      },
    fullwidth-stop / false .code:n = { }
  }
\__fdu_msg_new:nn { mapping-not-available }
  {
    Option~ "fullwidth-stop = mapping"~ is~ not~ available~ in~ LuaTeX. \\
    "fullwidth-stop = catcode"~ will~ be~ set~ instead.
  }
\cs_new:Npn \__fdu_set_fullwidth_stop_catcode:
  {
    \char_set_active_eq:NN ^^^^3002 \c__fdu_fwid_full_stop_tl
    \char_set_catcode_active:N ^^^^3002
    \clist_map_inline:nn
      { \c__fdu_orig_decl_text_tl, \c__fdu_auth_decl_text_tl }
      { \tl_set_rescan:Nno ##1 { } {##1} }
  }
\DeclareEmphSequence
  {
    \itshape \fdu@kai,
    \upshape \CJKfamily { \CJKfamilydefault },
  }
\fancyhf { }
\cs_new_protected:Npn \__fdu_fancy_head:nn #1#2
  {
    \fancyhead [#1]
      { \small \fdu@kai \nouppercase {#2} }
  }
\bool_if:NTF \g__fdu_twoside_bool
  {
    \__fdu_fancy_head:nn { EL } { \leftmark  }
    \__fdu_fancy_head:nn { OR } { \rightmark }
  }
  {
    \__fdu_fancy_head:nn { L  } { \leftmark  }
    \__fdu_fancy_head:nn { R  } { \rightmark }
  }
\fancyfoot [ C ] { \small \thepage }
\RenewDocumentCommand \cleardoublepage { }
  {
    \clearpage
    \bool_if:NT \g__fdu_twoside_bool
      {
        \int_if_odd:nF \c@page
          { \hbox:n { } \thispagestyle { empty } \newpage }
      }
  }
\pagestyle { fancy }
\keys_set:nn { ctex }
  {
    chapter =
      {
        format      = \huge \normalfont \sffamily \centering,
        beforeskip  = 50 pt,
        afterskip   = 40 pt,
        number      = \__fdu_arabic:n { chapter },
        fixskip     = true
      },
    section =
      {
        format      = \Large \normalfont \sffamily \raggedright,
        beforeskip  = 3.5 ex plus 1.0 ex minus 0.2 ex,
        afterskip   = 2.7 ex plus 0.5 ex,
        fixskip     = true
      },
    subsection =
      {
        format      = \large \normalfont \sffamily \raggedright,
        beforeskip  = 3.25 ex plus 1.0 ex minus 0.2 ex,
        afterskip   = 2.5  ex plus 0.3 ex,
        fixskip     = true
      }
  }
\cs_new_protected:Npn \__fdu_sanitize_chapter_title:n #1
  {
    \tl_clear:N \l__fdu_tmpa_tl
    \tl_set:No \l__fdu_tmpa_tl {#1}
    \tl_remove_all:Nn \l__fdu_tmpa_tl { \quad }
  }
\cs_new_protected:Npn \__fdu_chapter:n #1
  {
    \__fdu_sanitize_chapter_title:n {#1}
    \group_begin:
      \ctexset { chapter / numbering = false }
      \chapter [ \l__fdu_tmpa_tl ] {#1}
    \group_end:
    \__fdu_chapter_header:n {#1}
  }
\cs_generate_variant:Nn \__fdu_chapter:n { V }
\cs_new_protected:Npn \__fdu_chapter_no_toc:n #1
  {
    \chapter * {#1}
    \__fdu_sanitize_chapter_title:n {#1}
    \pdfbookmark [0] { \l__fdu_tmpa_tl } { toc }
    \__fdu_chapter_header:n {#1}
  }
\cs_generate_variant:Nn \__fdu_chapter_no_toc:n { V }
\cs_new_protected:Npn \__fdu_chapter_header:n #1
  {
    \bool_if:NTF \g__fdu_twoside_bool
      { \markboth {#1} {#1} }
      { \markboth { \hfill #1 \hfill } { } }
  }
\clist_map_inline:nn
  {
    { plain           } { plain           },
    { libertinus      } { libertinus      },
    { libertinus_neg  } { libertinus*     },
    { libertinus_sans } { libertinus-sans },
    { pifont          } { pifont          },
    { pifont_neg      } { pifont*         },
    { pifont_sans     } { pifont-sans     },
    { pifont_sans_neg } { pifont-sans*    },
    { xits            } { xits            },
    { xits_sans       } { xits-sans       },
    { xits_sans_neg   } { xits-sans*      }
  }
  { \__fdu_define_fn_style:nn #1 }
\tl_new:N \l__fdu_fn_style_tl
\keys_define:nn { fdu / style }
  {
    footnote-style .choices:nn =
      {
        plain,
        libertinus, libertinus*, libertinus-sans,
        pifont,     pifont*,     pifont-sans,     pifont-sans*,
        xits,                    xits-sans,       xits-sans*
      }
      {
        \tl_gset_eq:NN \l__fdu_fn_style_tl \l_keys_choice_tl
        \int_compare:nT { 5 <= \l_keys_choice_int <= 8 }
          { \RequirePackage { pifont } }
      },
    footnote-style .value_required:n = true
  }
\cs_new:Npn \__fdu_fn_symbol_libertinus:n #1
  {
    \int_compare:nTF { #1 >= 21 }
      {
        \int_compare:nTF { #1 >= 47 }
          { \__fdu_symbol:n { \int_eval:n { "24B6 - 47 + #1 } } }
          { \__fdu_symbol:n { \int_eval:n { "24D0 - 21 + #1 } } }
      }
      { \__fdu_symbol:n { \int_eval:n { "2460 - 1 + #1 } } }
  }
\cs_new:Npn \__fdu_fn_symbol_libertinus_neg:n #1
  {
    \int_compare:nTF { #1 >= 11 }
      { \__fdu_symbol:n { \int_eval:n { "24EB - 11 + #1 } } }
      { \__fdu_symbol:n { \int_eval:n { "2776 -  1 + #1 } } }
  }
\cs_new:Npn \__fdu_fn_symbol_pifont:n #1
  { \ding { \int_eval:n { 171 + #1 } } }
\cs_new:Npn \__fdu_fn_symbol_pifont_neg:n #1
  { \ding { \int_eval:n { 181 + #1 } } }
\cs_new:Npn \__fdu_fn_symbol_pifont_sans:n #1
  { \ding { \int_eval:n { 191 + #1 } } }
\cs_new:Npn \__fdu_fn_symbol_pifont_sans_neg:n #1
  { \ding { \int_eval:n { 201 + #1 } } }
\cs_new:Npn \__fdu_fn_symbol_xits:n #1
  {
    \int_compare:nTF { #1 >= 10 }
      {
        \int_compare:nTF { #1 >= 36 }
          { \__fdu_symbol:n { \int_eval:n { "24B6 - 36 + #1 } } }
          { \__fdu_symbol:n { \int_eval:n { "24D0 - 10 + #1 } } }
      }
      { \__fdu_symbol:n { \int_eval:n { "2460 - 1 + #1 } } }
  }
\cs_new:Npn \__fdu_fn_symbol_xits_sans:n #1
  { \__fdu_symbol:n { \int_eval:n { "2780 - 1 + #1 } } }
\cs_new:Npn \__fdu_fn_symbol_xits_sans_neg:n #1
  { \__fdu_symbol:n { \int_eval:n { "278A - 1 + #1 } } }
\cs_set:Npn \thefootnote { \fdu_footnote_number:N \c@footnote }
\cs_new:Npn \fdu_footnote_number:N #1
  {
    \tl_case:NnF \l__fdu_fn_style_tl
      {
        \c__fdu_fn_style_plain_tl
          { \int_use:N #1 }
        \c__fdu_fn_style_libertinus_tl
          {
            \fontspec { LibertinusSerif-Regular.otf }
            \__fdu_fn_symbol_libertinus:n {#1}
          }
        \c__fdu_fn_style_libertinus_neg_tl
          {
            \fontspec { LibertinusSerif-Regular.otf }
            \__fdu_fn_symbol_libertinus_neg:n {#1}
          }
        \c__fdu_fn_style_libertinus_sans_tl
          {
            \fontspec { LibertinusSans-Regular.otf }
            \__fdu_fn_symbol_libertinus:n {#1}
          }
        \c__fdu_fn_style_pifont_tl
          { \__fdu_fn_symbol_pifont:n {#1} }
        \c__fdu_fn_style_pifont_neg_tl
          { \__fdu_fn_symbol_pifont_neg:n {#1} }
        \c__fdu_fn_style_pifont_sans_tl
          { \__fdu_fn_symbol_pifont_sans:n {#1} }
        \c__fdu_fn_style_pifont_sans_neg_tl
          { \__fdu_fn_symbol_pifont_sans_neg:n {#1} }
        \c__fdu_fn_style_xits_tl
          {
            \fontspec { XITS-Regular.otf }
            \__fdu_fn_symbol_xits:n {#1}
          }
        \c__fdu_fn_style_xits_sans_tl
          {
            \fontspec { XITS-Regular.otf }
            \__fdu_fn_symbol_xits_sans:n {#1}
          }
        \c__fdu_fn_style_xits_sans_neg_tl
          {
            \fontspec { XITS-Regular.otf }
            \__fdu_fn_symbol_xits_sans_neg:n {#1}
          }
      }
      { \int_use:N #1 }
  }
\cs_set:Npn \@makefntext #1
  {
    \mode_leave_vertical:
    \hbox_to_wd:nn { 1.5 em } { \@thefnmark \hfil }
    #1
  }
\clist_const:Nn \c__fdu_thm_style_plain_clist
  { plain, margin, change }
\clist_const:Nn \c__fdu_thm_style_break_clist
  { break, marginbreak, changebreak }
\tl_new:N \l__fdu_thm_style_tl
\tl_new:N \l__fdu_thm_header_font_tl
\tl_new:N \l__fdu_thm_body_font_tl
\tl_new:N \l__fdu_thm_qed_tl
\tl_new:N \l__fdu_thm_counter_tl
\keys_define:nn { fdu / theorem }
  {
    style       .tl_set:N  = \l__fdu_thm_style_tl,
    header-font .tl_set:N  = \l__fdu_thm_header_font_tl,
    body-font   .tl_set:N  = \l__fdu_thm_body_font_tl,
    qed         .tl_set:N  = \l__fdu_thm_qed_tl,
    counter     .tl_set:N  = \l__fdu_thm_counter_tl
  }
\cs_new_eq:NN \__fdu_thm_ntheorem_style:n \theoremstyle
\cs_new_eq:NN \__fdu_thm_ntheorem_new:w   \newtheorem
\DeclareDocumentCommand \newtheorem { s o m m }
  {
    \IfBooleanTF {#1}
      { \tl_set:Nn \l__fdu_thm_qed_tl { \ensuremath { \QED } } }
      { \tl_set:Nn \l__fdu_thm_qed_tl { } }
    \tl_set:Nn \l__fdu_thm_style_tl { plain }
    \IfValueT {#2} { \keys_set:nn { fdu / theorem } {#2} }
    \fdu_thm_set_header_font:V \l__fdu_thm_header_font_tl
    \fdu_thm_set_body_font:V   \l__fdu_thm_body_font_tl
    \fdu_thm_set_qed:V         \l__fdu_thm_qed_tl
    \IfBooleanTF {#1}
      {
        \clist_if_in:nVF { plain, break } \l__fdu_thm_style_tl
          {
            \clist_if_in:NVTF
              \c__fdu_thm_style_plain_clist \l__fdu_thm_style_tl
              { \__fdu_thm_redefine_style:n { plain } }
              {
                \clist_if_in:NVTF
                  \c__fdu_thm_style_break_clist \l__fdu_thm_style_tl
                  { \__fdu_thm_redefine_style:n { break } }
                  {
                    \__fdu_error:nx { unknown-theorem-style }
                      { \l__fdu_thm_style_tl }
                  }
              }
          }
        \tl_put_left:Nn \l__fdu_thm_style_tl { nonumber }
        \fdu_thm_new_no_number:Vxx \l__fdu_thm_style_tl {#3} {#4}
      }
      {
        \clist_clear:N \l__fdu_tmpa_clist
        \clist_concat:NNN \l__fdu_tmpa_clist
          \c__fdu_thm_style_plain_clist \c__fdu_thm_style_break_clist
        \clist_if_in:NVF \l__fdu_tmpa_clist \l__fdu_thm_style_tl
          {
            \__fdu_error:nx { unknown-theorem-style }
              { \l__fdu_thm_style_tl }
          }
        \fdu_thm_new:VVxx \l__fdu_thm_style_tl \l__fdu_thm_counter_tl
          {#3} {#4}
      }
  }
\cs_new:Npn \__fdu_thm_redefine_style:n #1
  {
    \__fdu_warning:nxx { redefine-theorem-style }
      {#1} { \l__fdu_thm_style_tl }
    \tl_set:Nn \l__fdu_thm_style_tl {#1}
  }
\__fdu_msg_new:nn { redefine-theorem-style }
  { Theorem~ style~ "#2"~ will~ be~ redefined~ as~ "#1". }
\__fdu_msg_new:nn { unknown-theorem-style }
  { Theorem~ style~ "#1"~ is~ unknown. }
\cs_new:Npn \fdu_thm_new:nnnn #1#2#3#4
  {
    \__fdu_thm_ntheorem_style:n {#1}
    \__fdu_thm_ntheorem_new:w   {#3} {#4} [#2]
  }
\cs_generate_variant:Nn \fdu_thm_new:nnnn { VVxx }
\cs_new:Npn \fdu_thm_new_no_number:nnn #1#2#3
  {
    \__fdu_thm_ntheorem_style:n {#1}
    \__fdu_thm_ntheorem_new:w   {#2} {#3}
  }
\cs_generate_variant:Nn \fdu_thm_new_no_number:nnn { Vxx }
\cs_new:Npn \fdu_thm_set_qed:n         #1 { \theoremsymbol     {#1} }
\cs_new:Npn \fdu_thm_set_header_font:n #1 { \theoremheaderfont {#1} }
\cs_new:Npn \fdu_thm_set_body_font:n   #1 { \theorembodyfont   {#1} }
\cs_generate_variant:Nn \fdu_thm_set_qed:n         { V }
\cs_generate_variant:Nn \fdu_thm_set_header_font:n { V }
\cs_generate_variant:Nn \fdu_thm_set_body_font:n   { V }
\captionsetup [ figure ] { font = small,         labelsep = quad }
\captionsetup [ table  ] { font = { small, sf }, labelsep = quad }
\cs_set:Npn \thefigure
  { \thechapter - \__fdu_arabic:n { figure } }
\cs_set:Npn \thetable
  { \thechapter - \__fdu_arabic:n { table  } }
\clist_map_inline:nn
  {
    title, date, author, supervisor, department, major, student_id,
    school_id, applicant_type, clc, udc, jel
  }
  { \tl_new:c { l__fdu_info_ #1 _tl } }
\clist_new:N \l__fdu_info_instructors_clist
\clist_new:N \l__fdu_info_keywords_clist
\clist_map_inline:nn
  { title, author, supervisor, department, major }
  { \tl_new:c { l__fdu_info_ #1 _en_tl } }
\clist_new:N \l__fdu_info_keywords_en_clist
\tl_new:N \l__fdu_info_degree_type_tl
\tl_new:N \l__fdu_info_title_sanitized_tl
\tl_new:N \l__fdu_info_title_en_sanitized_tl
\cs_new_protected:Npn \__fdu_set_title:nn #1#2
  {
    \tl_set:cn { l__fdu_info_ #1 _tl           } {#2}
    \tl_set:cn { l__fdu_info_ #1 _sanitized_tl } {#2}
    \tl_replace_all:cnn { l__fdu_info_ #1 _sanitized_tl } { \\ } { ~ }
    \regex_replace_all:nnc
      { \s+ } { \ }
      { l__fdu_info_ #1 _sanitized_tl }
    \regex_replace_all:nnc
      { ([\x{4e00}-\x{9fff}]) \s+ ([\x{4e00}-\x{9fff}]) } { \1 \2 }
      { l__fdu_info_ #1 _sanitized_tl }
  }
\keys_define:nn { fdu / info }
  {
    degree      .choices:nn  =
      { academic, professional }
      { \tl_set_eq:NN \l__fdu_info_degree_type_tl \l_keys_choice_tl },
    degree      .value_required:n = true,
    title       .code:n      = { \__fdu_set_title:nn { title    } {#1} },
    title*      .code:n      = { \__fdu_set_title:nn { title_en } {#1} },
    date        .tl_set:N    = \l__fdu_info_date_tl,
    author      .tl_set:N    = \l__fdu_info_author_tl,
    author*     .tl_set:N    = \l__fdu_info_author_en_tl,
    supervisor  .tl_set:N    = \l__fdu_info_supervisor_tl,
    instructors .clist_set:N = \l__fdu_info_instructors_clist,
    department  .tl_set:N    = \l__fdu_info_department_tl,
    major       .tl_set:N    = \l__fdu_info_major_tl,
    student-id  .tl_set:N    = \l__fdu_info_student_id_tl,
    school-id   .tl_set:N    = \l__fdu_info_school_id_tl,
    % Leave empty for ordinary applicants; examples: 同等学力人员, 英文项目.
    applicant-type .tl_set:N = \l__fdu_info_applicant_type_tl,
    keywords    .clist_set:N = \l__fdu_info_keywords_clist,
    keywords*   .clist_set:N = \l__fdu_info_keywords_en_clist,
    clc         .tl_set:N    = \l__fdu_info_clc_tl,
    udc         .tl_set:N    = \l__fdu_info_udc_tl,
    jel         .tl_set:N    = \l__fdu_info_jel_tl
  }
\tl_new:N    \l__fdu_cover_logo_tl
\clist_new:N \l__fdu_cover_logo_size_clist
\keys_define:nn { fdu / style }
  {
    logo      .tl_set:N    = \l__fdu_cover_logo_tl,
    logo-size .clist_set:N = \l__fdu_cover_logo_size_clist
  }
\tl_new:N \l__fdu_info_secret_level_tl
\keys_define:nn { fdu / info }
  {
    secret-level .choices:nn  =
      { none, i, ii, iii }
      { \tl_set_eq:NN \l__fdu_info_secret_level_tl \l_keys_choice_tl },
    secret-level .value_required:n = true,
    secret-year  .tl_set:N = \l__fdu_info_secret_year_tl
  }
\cs_new_protected:Npn \__fdu_spread_box:nn #1#2
  {
    \mode_leave_vertical:
    \hbox_to_wd:nn {#1} { \tl_map_inline:nn {#2} { ##1 \hfil } \unskip }
  }
\cs_generate_variant:Nn \__fdu_spread_box:nn { no }
\cs_new_protected:Npn \__fdu_center_box:nn #1#2
  {
    \mode_leave_vertical:
    \hbox_to_wd:nn {#1} { \hfil #2 \hfil }
  }
\cs_generate_variant:Nn \__fdu_center_box:nn { Vn }
\cs_new:Npn \__fdu_fixed_width_box:nn #1#2
  { \parbox {#1} {#2} }
\cs_new:Npn \__fdu_fixed_width_center_box:nn #1#2
  { \parbox {#1} { \centering #2 } }
\cs_new:Npn \__fdu_get_text_width:Nn #1#2
  {
    \hbox_set:Nn \l__fdu_tmpa_box {#2}
    \dim_set:Nn #1 { \box_wd:N \l__fdu_tmpa_box }
  }
\cs_generate_variant:Nn \__fdu_get_text_width:Nn { NV }
\cs_new:Npn \__fdu_blank_underline:n #1
  { \rule [ -0.5 ex ] {#1} { 0.4 pt } }
\cs_new:Npn \__fdu_line_spread:N #1
  { \linespread { \fp_use:N #1 } \selectfont }
\cs_new:Npn \__fdu_line_spread:n #1
  { \linespread {#1} \selectfont }
\cs_new_protected:Npn \__fdu_cover_id:
  {
    \noindent
    \hbox_to_wd:nn { \textwidth }
      {
        \tl_if_empty:NF \l__fdu_info_clc_tl
          { \__fdu_cover_id_pair:n { clc } }
        \hfil
        \vbox
          {
            \tl_if_eq:NnF \l__fdu_info_secret_level_tl { none }
              { \hbox { \__fdu_cover_secret_text: } }
            \hbox { \__fdu_cover_id_pair:n { school_id } }
            \tl_if_empty:NF \l__fdu_info_applicant_type_tl
              { \hbox { \l__fdu_info_applicant_type_tl } }
          }
      }
  }
\cs_new_protected:Npn \__fdu_cover_id_tabular:n #1
  {
    \exp_args:Nnx \begin{tabular} { \c__fdu_cover_id_align_tl }
      #1
      \tl_if_empty:NF \l__fdu_info_clc_tl
        { \__fdu_cover_id_aux:n { clc } \\ }
      \__fdu_cover_id_aux:n { school_id  }
    \end{tabular}
  }
\cs_new:Npn \__fdu_cover_id_aux:n #1
  {
    \tl_use:c { c__fdu_name_ #1 _tl } &
    \tl_use:c { l__fdu_info_ #1 _tl }
  }
\cs_new:Npn \__fdu_cover_id_pair:n #1
  {
    \tl_use:c { c__fdu_name_ #1 _tl }
    \c__fdu_fwid_colon_tl
    \tl_use:c { l__fdu_info_ #1 _tl }
  }
\tl_const:Nn \c__fdu_cover_id_align_tl
  { l @ { \c__fdu_fwid_colon_tl } l @ { } }
\cs_new:Npn \__fdu_cover_secret:
  {
    \multicolumn { 2 } { l }
      {
        \sffamily
        \c__fdu_name_secret_level_tl
        \c__fdu_fwid_colon_tl
        \prop_item:No \c__fdu_secret_prop
          { \l__fdu_info_secret_level_tl }
        \c__fdu_name_secret_star_tl
        \l__fdu_info_secret_year_tl
      }
  }
\cs_new:Npn \__fdu_cover_secret_text:
  {
    \sffamily
    \c__fdu_name_secret_level_tl
    \c__fdu_fwid_colon_tl
    \prop_item:No \c__fdu_secret_prop
      { \l__fdu_info_secret_level_tl }
    \c__fdu_name_secret_star_tl
    \l__fdu_info_secret_year_tl
  }
\cs_new_protected:Npn \__fdu_cover_logo:
  {
    \clist_pop:NN   \l__fdu_cover_logo_size_clist \l__fdu_tmpa_tl
    \clist_pop:NNTF \l__fdu_cover_logo_size_clist \l__fdu_tmpb_tl
      {
        \tl_if_empty:NTF \l__fdu_tmpa_tl
          { \includegraphics [ height = \l__fdu_tmpb_tl ] }
          {
            \includegraphics
              [ width  = \l__fdu_tmpa_tl, height = \l__fdu_tmpb_tl ]
          }
      }
      { \includegraphics [ width = \l__fdu_tmpa_tl ] }
    { \l__fdu_cover_logo_tl }
  }
\cs_new_protected:Npn \__fdu_cover_type:
  {
    \prop_get:NVN \c__fdu_thesis_type_prop
      \g__fdu_thesis_type_tl \l__fdu_tmpa_tl
    \__fdu_spread_box:no { 0.45 \textwidth } { \l__fdu_tmpa_tl }
  }
\cs_new_protected:Npn \__fdu_cover_degree:
  {
    \tl_if_eq:NnF \g__fdu_thesis_type_tl { bachelor }
      {
        \c__fdu_fwid_left_paren_tl
        \prop_item:No \c__fdu_degree_type_prop
          { \l__fdu_info_degree_type_tl }
        \c__fdu_fwid_right_paren_tl
      }
  }
\cs_new_protected:Npn \__fdu_cover_info:
  {
    \group_begin:
      \zihao { 4 }
      \clist_clear:N \l__fdu_tmpa_clist
      \clist_map_inline:nn { author }
        {
          \clist_gput_right:Nn \l__fdu_tmpa_clist
            {
              \exp_args:Nnx \__fdu_cover_info_left:nn { ##1 }
                { \tl_use:c { c__fdu_name_ ##1 _tl } }
              &
              \tl_use:c { l__fdu_info_ ##1 _tl }
            }
        }
      \clist_gput_right:Nn \l__fdu_tmpa_clist
        {
          \exp_args:Nnx \__fdu_cover_info_left:nn { student_id }
            { \c__fdu_name_student_id_tl }
          &
          \l__fdu_info_student_id_tl
        }
      \clist_map_inline:nn { supervisor, major, department, date }
        {
          \clist_gput_right:Nn \l__fdu_tmpa_clist
            {
              \exp_args:Nnx \__fdu_cover_info_left:nn { ##1 }
                { \tl_use:c { c__fdu_name_ ##1 _tl } }
              &
              \tl_use:c { l__fdu_info_ ##1 _tl }
            }
        }
      \exp_args:Nnx \begin{tabular} { \c__fdu_cover_info_align_tl }
        \clist_use:Nn \l__fdu_tmpa_clist { \\ [ 1.6 ex ] }
      \end{tabular}
    \group_end:
  }
\tl_const:Nn \c__fdu_cover_info_align_tl
  { c @ { \c__fdu_fwid_colon_tl \quad } l }
\cs_new_protected:Npn \__fdu_cover_info_left:nn #1#2
  {
    \tl_if_eq:NnTF \l__fdu_info_degree_type_tl { professional }
      {
        \str_if_eq:nnTF {#1} { supervisor }
          { \hbox_to_wd:nn { 7 em } { #2 \hfil } }
          {
            \str_if_eq:nnTF {#1} { student_id }
              { \hbox_to_wd:nn { 7 em } { 学 \hfil 号 } }
              { \__fdu_spread_box:nn { 7 em } {#2} }
          }
      }
      {
        % Do not feed the pre-spaced student-id label (\qquad) through
        % token-by-token spreading: it splits the skip command's argument.
        \str_if_eq:nnTF {#1} { student_id }
          { \hbox_to_wd:nn { 7 em } { 学 \hfil 号 } }
          { \__fdu_spread_box:nn { 7 em } {#2} }
      }
  }
\cs_new_protected:Npn \__fdu_cover_signature:N #1
  {
    \clist_map_inline:Nn #1
      {
        ##1 \c__fdu_fwid_colon_tl
        \__fdu_blank_underline:n { 6 em }
        \__fdu_quad:
      }
  }
\DeclareObjectType { fdu / cover } { \c_zero_int }
\NewDocumentCommand \DeclareCoverTemplate { m m }
  { \fdu_cover_declare_template:nn {#1} {#2} }
\cs_new_protected:Npn \fdu_cover_declare_template:nn #1#2
  {
    \tl_set:Nn \l__fdu_cover_template_tl {#1}
    \__fdu_cover_declare_template_interface:nx {#1}
      {
        format      : tokenlist,
        top-skip    : skip,
        bottom-skip : skip,
        \clist_map_function:nN {#2} \__fdu_cover_key_type:n
      }
    \tl_new:c   { l__fdu_cover / #1 / format_tl   }
    \skip_new:c { l__fdu_cover / #1 / top_skip    }
    \skip_new:c { l__fdu_cover / #1 / bottom_skip }
    \clist_map_inline:nn {#2}
      {
        \tl_new:c   { l__fdu_cover / #1 / ##1 / content_tl  }
        \tl_new:c   { l__fdu_cover / #1 / ##1 / format_tl   }
        \skip_new:c { l__fdu_cover / #1 / ##1 / bottom_skip }
      }
    \__fdu_cover_declare_template_code:nxn {#1}
      {
        format      = \exp_not:c { l__fdu_cover / #1 / format_tl   },
        top-skip    = \use:c     { l__fdu_cover / #1 / top_skip    },
        bottom-skip = \use:c     { l__fdu_cover / #1 / bottom_skip },
        \clist_map_function:nN {#2} \__fdu_cover_key_binding:n
      }
      {
        \AssignTemplateKeys
        \tl_use:c       { l__fdu_cover / #1 / format_tl }
        \__fdu_vspace:c { l__fdu_cover / #1 / top_skip  }
        \clist_map_inline:nn {#2}
          {
            \use:c { __fdu_cover / #1 / ####1 / align:n }
              {
                \tl_use:c { l__fdu_cover / #1 / ####1 / format_tl  }
                \tl_use:c { l__fdu_cover / #1 / ####1 / content_tl }
                \par
              }
            \__fdu_vspace:c { l__fdu_cover / #1 / ####1 / bottom_skip }
          }
        \__fdu_vspace:c { l__fdu_cover / #1 / bottom_skip }
      }
  }
\tl_new:N \l__fdu_cover_template_tl
\cs_new_protected:Npn \__fdu_cover_declare_template_interface:nn #1#2
  { \DeclareTemplateInterface { fdu / cover } {#1} { \c_zero_int } {#2} }
\cs_new_protected:Npn \__fdu_cover_declare_template_code:nnn #1#2#3
  { \DeclareTemplateCode { fdu / cover } {#1} { \c_zero_int } {#2} {#3} }
\cs_generate_variant:Nn \__fdu_cover_declare_template_interface:nn { nx  }
\cs_generate_variant:Nn \__fdu_cover_declare_template_code:nnn     { nxn }
\cs_new:Npn \__fdu_cover_key_type:n #1
  {
    #1 / content     : tokenlist,
    #1 / format      : tokenlist,
    #1 / bottom-skip : skip,
    #1 / align       : choice { left, right, center, normal } = normal,
  }
\cs_new:Npn \__fdu_cover_key_binding:n #1
  {
    #1 / content     =
      \exp_not:c
        { l__fdu_cover / \l__fdu_cover_template_tl / #1 / content_tl  },
    #1 / format      =
      \exp_not:c
        { l__fdu_cover / \l__fdu_cover_template_tl / #1 / format_tl   },
    #1 / bottom-skip =
      \exp_not:c
        { l__fdu_cover / \l__fdu_cover_template_tl / #1 / bottom_skip },
    #1 / align       =
      {
        left   =
          \exp_not:N \cs_set_protected:cpn
            { __fdu_cover / \l__fdu_cover_template_tl / #1 / align:n }
            \exp_not:n {##1}
            {
              \exp_not:n
                {
                  \group_begin:
                    \flushleft ##1 \endflushleft
                  \group_end:
                }
            },
        right  =
          \exp_not:N \cs_set_protected:cpn
            { __fdu_cover / \l__fdu_cover_template_tl / #1 / align:n }
            \exp_not:n {##1}
            {
              \exp_not:n
                {
                  \group_begin:
                    \flushright ##1 \endflushright
                  \group_end:
                }
            },
        center =
          \exp_not:N \cs_set_protected:cpn
            { __fdu_cover / \l__fdu_cover_template_tl / #1 / align:n }
            \exp_not:n {##1}
            {
              \exp_not:n
                {
                  \group_begin:
                    \center ##1 \endcenter
                  \group_end:
                }
            },
        normal =
          \exp_not:N \cs_set_protected:cpn
            { __fdu_cover / \l__fdu_cover_template_tl / #1 / align:n }
            \exp_not:n {##1}
            { \exp_not:n { \group_begin: ##1 \group_end: } }
      },
  }
\NewDocumentCommand \makecoveri { }
  {
    \thispagestyle { empty }
    \tl_set:Nn \thepage { A }
    \UseInstance { fdu / cover } { cover-i-default }
  }
\NewDocumentCommand \makecoverii { }
  {
    \thispagestyle { empty }
    \tl_set:Nn \thepage { B }
    \clist_if_empty:NTF \l__fdu_info_instructors_clist
      { \hbox:n { } }
      { \UseInstance { fdu / cover } { cover-ii-default } }
  }
\NewDocumentCommand \makecoveriii { }
  {
    \cleardoublepage
    \thispagestyle { empty }
    \tl_set:Nn \thepage { C }
    \tl_if_empty:NTF \l__fdu_declaration_page_tl
      { \UseInstance { fdu / cover } { cover-iii-default } }
      { \includepdf { \l__fdu_declaration_page_tl } }
  }
\DeclareCoverTemplate { cover-i   }
  { id, logo, type, degree, title, title-en, info }
\DeclareCoverTemplate { cover-ii  } { title, name-list }
\DeclareCoverTemplate { cover-iii }
  {
    originality-decl-name,
    originality-decl-text,
    originality-decl-sig,
    authorization-decl-name,
    authorization-decl-text,
    authorization-decl-sig
  }
\DeclareInstance { fdu / cover } { cover-i-default } { cover-i }
  {
    bottom-skip            = 0 pt plus 0.6 fill,
    id       / content     = \__fdu_cover_id:,
    logo     / content     = \__fdu_cover_logo:,
    type     / content     = \__fdu_cover_type:,
    degree   / content     = \__fdu_cover_degree:,
    title    / content     =
      \__fdu_fixed_width_center_box:nn
        { 0.9 \textwidth } { \l__fdu_info_title_tl },
    title-en / content     =
      \__fdu_fixed_width_center_box:nn
        { 0.9 \textwidth } { \l__fdu_info_title_en_tl },
    info     / content     = \__fdu_cover_info:,
    id       / format      = \zihao { -5 },
    type     / format      = \zihao {  2 },
    degree   / format      = \zihao {  4 },
    title    / format      = \zihao { -2 } \bfseries,
    title-en / format      =
      \__fdu_line_spread:n { 1.2 } \zihao { 4 } \bfseries,
    id       / bottom-skip = 0 pt plus 1.6 fill,
    logo     / bottom-skip = 0 pt plus 0.3 fill,
    type     / bottom-skip = -18 pt,
    degree   / bottom-skip = 0 pt plus 0.8 fill,
    title-en / bottom-skip = 0 pt plus 2.5 fill,
    id       / align       = normal,
    logo     / align       = center,
    type     / align       = center,
    degree   / align       = center,
    title    / align       = center,
    title-en / align       = center,
    info     / align       = center,
  }
\DeclareInstance { fdu / cover } { cover-ii-default } { cover-ii }
  {
    title     / content =
      \__fdu_spread_box:no { 7 em } { \c__fdu_name_instructors_tl },
    name-list / content =
      \clist_use:Nn \l__fdu_info_instructors_clist { \par },
    title     / format  = \zihao { 2 } \sffamily,
    name-list / format  = \large,
    title     / align   = center,
    name-list / align   = center,
  }
\DeclareInstance { fdu / cover } { cover-iii-default } { cover-iii }
  {
    format                                =
      \__fdu_line_spread:n { 1.8 },
    top-skip                              = 0 pt plus 0.2 fill,
    bottom-skip                           = 0 pt plus 2.5 fill,
    originality-decl-name   / content     = \c__fdu_name_orig_decl_tl,
    originality-decl-text   / content     = \c__fdu_orig_decl_text_tl,
    originality-decl-sig    / content     =
      \__fdu_cover_signature:N \c__fdu_orig_decl_sign_clist,
    authorization-decl-name / content     = \c__fdu_name_auth_decl_tl,
    authorization-decl-text / content     = \c__fdu_auth_decl_text_tl,
    authorization-decl-sig  / content     =
      \__fdu_cover_signature:N \c__fdu_auth_decl_sign_clist,
    originality-decl-name   / format      =
      \__fdu_line_spread:n { 1.2 } \zihao { -2 } \bfseries,
    authorization-decl-name / format      =
      \__fdu_line_spread:n { 1.2 } \zihao { -2 } \bfseries,
    originality-decl-name   / bottom-skip = 0.4 cm,
    originality-decl-text   / bottom-skip = 0.4 cm,
    originality-decl-sig    / bottom-skip = 0 pt plus 2.5 fill,
    authorization-decl-name / bottom-skip = 0.4 cm,
    authorization-decl-text / bottom-skip = 0.4 cm,
    originality-decl-name   / align       = center,
    originality-decl-sig    / align       = right,
    authorization-decl-name / align       = center,
    authorization-decl-sig  / align       = right,
  }
\bool_new:N \l__fdu_auto_make_cover_bool
\tl_new:N   \l__fdu_declaration_page_tl
\keys_define:nn { fdu / style }
  {
    auto-make-cover  .bool_set:N = \l__fdu_auto_make_cover_bool,
    auto-make-cover  .default:n  = true,
    declaration-page .code:n     =
      {
        \tl_set_eq:NN \l__fdu_declaration_page_tl \l_keys_value_tl
        \RequirePackage { pdfpages }
      },
  }
\ctex_after_end_preamble:n
  {
    \bool_if:NT \l__fdu_auto_make_cover_bool
      {
        \begin{titlepage}
          \makecoveri \newpage \makecoverii
        \end{titlepage}
      }
  }
\__fdu_gadd_ltxhook:nn { enddocument }
  { \bool_if:NT \l__fdu_auto_make_cover_bool { \makecoveriii } }
\keys_set:nn { ctex }
  {
    contentsname   = \c__fdu_name_toc_tl,
    listfigurename = \c__fdu_name_lof_tl,
    listtablename  = \c__fdu_name_lot_tl,
    chapter / tocline =
      {
        \normalfont \sffamily
        \CTEXnumberline {#1} #2
      },
    section / tocline =
      {
        \CTEXnumberline {#1} #2
      },
    subsection / tocline =
      {
        \fdu@kai
        \CTEXnumberline {#1} #2
      }
  }
\__fdu_patch_cmd:Nnn \tableofcontents
  {
    \chapter*{\contentsname
      \@mkboth{\MakeUppercase\contentsname}
              {\MakeUppercase\contentsname}}
  }
  { \__fdu_chapter_no_toc:V \contentsname }
\__fdu_patch_cmd:Nnn \listoffigures
  {
    \chapter*{\listfigurename}
    \@mkboth{\MakeUppercase\listfigurename}
            {\MakeUppercase\listfigurename}
  }
  { \__fdu_chapter:V \listfigurename }
\__fdu_patch_cmd:Nnn \listoftables
  {
    \chapter*{\listtablename}
    \@mkboth{\MakeUppercase\listtablename}
            {\MakeUppercase\listtablename}
  }
  { \__fdu_chapter:V \listtablename }
\NewDocumentEnvironment { abstract  } { }
  { \__fdu_abstract_begin:    } { \__fdu_abstract_end:      }
\NewDocumentEnvironment { abstract* } { }
  { \__fdu_abstract_en_begin: } { \__fdu_abstract_en_end:   }
\cs_new_protected:Npn \__fdu_abstract_begin:
  {
    \cleardoublepage
    \addcontentsline {toc} {chapter}
      { \protect\normalfont\protect\sffamily \c__fdu_name_abstract_tl }
    \thispagestyle { plain }
    \markboth { \c__fdu_name_abstract_tl } { \c__fdu_name_abstract_tl }
    \group_begin:
      \normalfont
      \linespread { 1 } \selectfont
      \parindent = 0pt
      \tl_set_eq:NN \l__fdu_tmpa_tl \l__fdu_info_title_tl
      \tl_replace_all:Nnn \l__fdu_tmpa_tl { \\ } { ~ }
      {\centering \fontsize { 10.56bp }{ 15.6bp } \selectfont
        \tl_if_eq:VnTF \l__fdu_tmpa_tl {中文论文题目}
          {论文题目\par} {\l__fdu_tmpa_tl\par}}
      % The university's Chinese abstract sample uses 10.56 bp glyphs,
      % 15.6 bp baselines, zero paragraph indent and left alignment.
      \fontsize { 10.56bp }{ 15.6bp } \selectfont
      \raggedright
      \parskip = 0pt
      \noindent
      摘要：
      \@ifnextchar \par \@gobble \relax
  }
\cs_new_protected:Npn \__fdu_abstract_en_begin:
  {
    \cleardoublepage
    \addcontentsline {toc} {chapter}
      { \protect\normalfont\protect\sffamily \c__fdu_name_abstract_en_tl }
    \thispagestyle { plain }
    \markboth { \c__fdu_name_abstract_en_tl } { \c__fdu_name_abstract_en_tl }
    \group_begin:
      \normalfont
      \linespread { 1 } \selectfont
      \parindent = 0pt
      \fontsize { 12bp }{ 20bp } \selectfont
      \raggedright
      \parskip = 0pt
      {\centering
        \tl_if_eq:VnTF \l__fdu_info_title_en_tl {英文论文题目}
          {Title\par} {\l__fdu_info_title_en_tl\par}}
      \noindent
      Abstract \
      \@ifnextchar \par \@gobble \relax
  }
\cs_new_protected:Npn \__fdu_abstract_end:
  {
    \__fdu_keywords:nNn
      { \CJKfamily { \CJKfamilydefault } \c__fdu_name_keywords_tl \c__fdu_fwid_colon_tl }
      \l__fdu_info_keywords_clist { \c__fdu_fwid_semicolon_tl }
    \group_end:
  }
\cs_new_protected:Npn \__fdu_abstract_en_end:
  {
    \__fdu_keywords:nNn
      { \c__fdu_name_keywords_en_tl \  }
      \l__fdu_info_keywords_en_clist { ; ~ }
    \tl_if_empty:NTF \l__fdu_info_jel_tl
      { }
      {
        \__fdu_clc_jel:nn
          { \bfseries \c__fdu_name_jel_en_tl }
          { \l__fdu_info_jel_tl }
      }
    \group_end:
  }
\cs_new_protected:Npn \__fdu_keywords:nNn #1#2#3
  {
    \par \noindent
    \group_begin: #1 \group_end:
    \clist_use:Nn #2 {#3} \par
    \cs_gset:Npx \__fdu_keywords_prevdepth:
      { \dim_use:N \tex_prevdepth:D }
  }
\cs_new_protected:Npn \__fdu_clc_jel:nn #1#2
  {
    \par \tex_prevdepth:D \__fdu_keywords_prevdepth: \noindent
    \group_begin: #1 \group_end:
    #2
  }
\NewDocumentEnvironment { notation } { O { l p { 7.5 cm } } }
  {
    \__fdu_notation_begin:
    \group_begin:
      \__fdu_notation_long_table_setup:
      \longtable {#1}
  }
  {
      \endlongtable
    \group_end:
  }
\cs_new_protected:Npn \__fdu_notation_begin:
  {
    \__fdu_chapter:V \c__fdu_name_notation_tl
  }
\cs_new_protected:Npn \__fdu_notation_long_table_setup:
  {
    \dim_set_eq:NN \LTpre  \c_zero_dim
    \dim_set_eq:NN \LTpost \c_zero_dim
  }
\NewDocumentEnvironment { acknowledgements } { }
  { \__fdu_acknowledgements_begin: } { \par }
\cs_new_protected:Npn \__fdu_acknowledgements_begin:
  {
    % End the bibliography's pending after-list state before the grouped
    % chapter command; otherwise its everypar hook removes the first indent.
    \par
    \__fdu_chapter:V \c__fdu_name_acknowledgements_tl
  }
\tl_new:N \l__fdu_bib_backend_tl
\tl_new:N \l__fdu_bib_style_tl
\tl_new:N \l__fdu_bib_gb_style_tl
\tl_new:N \l__fdu_cite_style_tl
\clist_new:N \l__fdu_bib_resource_clist
\keys_define:nn { fdu / style }
  {
    bib-backend .choice:,
    bib-backend .value_required:n = true,
    bib-backend / bibtex   .code:n =
      { \tl_set:Nn \l__fdu_bib_backend_tl { bibtex } },
    bib-backend / biblatex .code:n =
      {
        \tl_set:Nn \l__fdu_bib_backend_tl { biblatex }
        \NewDocumentCommand \addbibresource { m }
          { \clist_gput_right:Nn \l__fdu_bib_resource_clist {#1} }
      },
    bib-style .choice:,
    bib-style .value_required:n = true,
    bib-style / numerical    .code:n =
      {
        \tl_set:Nn  \l__fdu_bib_gb_style_tl { numerical  }
        \tl_clear:N \l__fdu_bib_style_tl
      },
    bib-style / author-year .code:n =
      {
        \tl_set:Nn  \l__fdu_bib_gb_style_tl { author-year }
        \tl_clear:N \l__fdu_bib_style_tl
      },
    bib-style / unknown     .code:n =
      {
        \tl_set_eq:NN \l__fdu_bib_style_tl \l_keys_value_tl
        \tl_clear:N   \l__fdu_bib_gb_style_tl
      },
    cite-style .tl_set:N = \l__fdu_cite_style_tl,
    bib-resource .clist_set:N = \l__fdu_bib_resource_clist
  }
\ctex_at_end_preamble:n
  {
    \tl_if_eq:NnT \l__fdu_bib_backend_tl { bibtex }
      {
        \tl_if_empty:NTF \l__fdu_bib_style_tl
          {
            \RequirePackage [ sort & compress ] { gbt7714 }
            % gbt7714 v3 uses these names for the 2025 standard. The old
            % numerical/author-year filenames may still select 2015 files.
            \tl_if_eq:NnTF \l__fdu_bib_gb_style_tl { numerical }
              { \bibliographystyle { gbt7714-numeric } }
              { \bibliographystyle { gbt7714-authoryear } }
          }
          {
            \RequirePackage [ sort & compress ] { natbib }
            \exp_args:No \bibliographystyle
              { \l__fdu_bib_style_tl }
          }
        \__fdu_bibtex_setup:
      }
  }
\__fdu_gadd_ltxhook:nn { env/document/begin }
  {
    \tl_if_eq:NnT \l__fdu_bib_backend_tl { biblatex }
      {
        \__fdu_biblatex_pre_setup:
        \RequirePackage { biblatex }
        \__fdu_biblatex_post_setup:
      }
  }
\cs_new_protected:Npn \__fdu_bibtex_setup:
  {
    \tl_if_eq:VnTF \l__fdu_bib_gb_style_tl { numerical }
      {
        \exp_args:NNx \DeclareRobustCommand \parencite
          { \exp_args:No \exp_not:o { \cs:w cite ~ \cs_end: } }
        \exp_args:Nc \ctex_patch_cmd:Nnn { parencite ~ }
          { \begingroup }
          { \begingroup \bibstyle@numbers }
      }
      { \cs_set_eq:NN \parencite \cite }
    \tl_if_empty:NF \l__fdu_cite_style_tl
      { \exp_args:NV \citestyle \l__fdu_cite_style_tl }
    \cs_if_exist:NTF \bibrangedash
      { \cs_set:Npn \bibrangedash { \textendash } }
      {
        \ctex_patch_cmd:Nnn \NAT@citexnum
          { - \NAT@penalty }
          { \textendash \NAT@penalty }
      }
    \cs_set:Npn \bibsection { \__fdu_chapter:V \bibname }
    \NewDocumentCommand \printbibliography { o }
      {
        \exp_args:NV \bibliography \l__fdu_bib_resource_clist
        \IfValueT {##1}
          { \__fdu_warning:nn { invalid-option-in-bibtex } {##1} }
      }
  }
\__fdu_msg_new:nn { invalid-option-in-bibtex }
  { Option(s)~ "#1"~ are~ invalid~ in~ BibTeX. }
\cs_new_protected:Npn \__fdu_biblatex_pre_setup:
  {
    \cs_undefine:N \addbibresource
    \clist_new:N \l__fdu_biblatex_options_clist
    \clist_put_right:Nn \l__fdu_biblatex_options_clist { hyperref = manual }
    \clist_put_right:Nx \l__fdu_biblatex_options_clist
      {
        style =
        \tl_if_empty:NTF \l__fdu_bib_style_tl
          {
            \str_if_eq:VnTF \l__fdu_bib_gb_style_tl { numerical }
              { gb7714-2015 } { gb7714-2015ay }
          }
          { \l__fdu_bib_style_tl }
      }
    \tl_if_empty:NF \l__fdu_cite_style_tl
      {
        \clist_put_right:Nx \l__fdu_biblatex_options_clist
          { citestyle = \l__fdu_cite_style_tl }
      }
    \exp_args:NV \PassOptionsToPackage \l__fdu_biblatex_options_clist
      { biblatex }
  }
\cs_new_protected:Npn \__fdu_biblatex_post_setup:
  {
    \clist_map_function:NN \l__fdu_bib_resource_clist \addbibresource
    \__fdu_biblatex_allow_url_break:
    \__fdu_biblatex_use_en_dash:
    \defbibheading { bibliography } [ \bibname ] { \__fdu_chapter:n {##1} }
  }
\cs_new:Npn \__fdu_biblatex_allow_url_break:
  {
    \int_set_eq:NN \c@biburlucpenalty  \c_one_int
    \int_set_eq:NN \c@biburlnumpenalty \c_one_int
    \int_set_eq:NN \c@biburllcpenalty  \c_one_int
  }
\cs_new:Npn \__fdu_biblatex_use_en_dash:
  {
    \DefineBibliographyExtras { english }
      {
        \cs_set_nopar:Npn \bibrangedash
          { \textendash \penalty \hyphenpenalty }
      }
    \DefineBibliographyExtras { russian }
      {
        \cs_set_nopar:Npn \bibrangedash
          { \textendash \penalty \hyphenpenalty }
      }
  }
\DeclareDocumentCommand \hypersetup { m }
  { \fdu_hyperref_setup:n {#1} }
\cs_new_protected:Npn \fdu_hyperref_setup:n #1
  { \clist_gput_right:Nn \g__fdu_to_hyperref_clist {#1} }
\cs_new:Npn \__fdu_set_hyperlink_color_key:n #1
  {
    hyperlink-color / \clist_item:nn {#1} {1} .code:n =
      {
        \__fdu_define_hyperlink_color:nnn
          { \clist_item:nn {#1} {2} }
          { \clist_item:nn {#1} {3} }
          { \clist_item:nn {#1} {4} }
        \fdu_hyperref_setup:n
          {
            linkcolor = fdu@link, linkbordercolor = fdu@link,
            urlcolor  = fdu@url,  urlbordercolor  = fdu@url,
            citecolor = fdu@cite, citebordercolor = fdu@cite
          }
      },
  }
\cs_new_protected:Npn \__fdu_define_hyperlink_color:nnn #1#2#3
  {
    \definecolorset { HTML } { fdu@ } { }
      { link, #1; url, #2; cite, #3 }
  }
\keys_define:nx { fdu / style }
  {
    hyperlink .choice:,
    hyperlink .value_required:n = true,
    hyperlink / border .code:n =
      { \fdu_hyperref_setup:n { colorlinks = false } },
    hyperlink / color  .code:n =
      { \fdu_hyperref_setup:n { colorlinks = true  } },
    hyperlink / none   .code:n =
      { \fdu_hyperref_setup:n { hidelinks } },
    hyperlink-color .choice:,
    hyperlink-color .value_required:n = true,
    \clist_map_function:nN
      {
        { classic,   FF0000, 0000FF, 00FF00 },
        { default,   990000, 0000B2, 007F00 },
        { material,  E91E63, 009688, 4CAF50 },
        { graylevel, 616161, 616161, 616161 },
        { prl,       2D3092, 2D3092, 2D3092 }
      }
      \__fdu_set_hyperlink_color_key:n
  }
\cs_new:Npn \fdu_allow_url_break:
  {
    \cs_new:Npn \__fdu_add_url_break_points:
      { \tl_map_function:NN \c__fdu_url_break_points_tl \do }
    \__fdu_appto_cmd:Nn \UrlBreaks
      { \UrlOrds \__fdu_add_url_break_points: }
  }
\tl_const:Nn \c__fdu_url_break_points_tl
  {
    abcdefghijklmnopqrstuvwxyz
    ABCDEFGHIJKLMNOPQRSTUVWXYZ
    0123456789
  }
\ctex_at_end_preamble:n
  {
    \RequirePackage { hyperref }
    \hypersetup
      {
        bookmarksnumbered = true,
        psdextra          = true,
        unicode           = true,
        pdftitle    = \l__fdu_info_title_sanitized_tl,
        pdfauthor   = \l__fdu_info_author_tl,
        pdfkeywords = \l__fdu_info_keywords_clist,
        pdfcreator  = \c__fdu_name_pdf_creator_tl
      }
    \exp_args:NV \hypersetup \g__fdu_to_hyperref_clist
    \fdu_allow_url_break:
    \tl_if_eq:NnT \l__fdu_bib_backend_tl { biblatex }
      { \BiblatexManualHyperrefOn }
  }
\ctex_at_end_package:nn { hyperref }
  {
    \pdfstringdefDisableCommands
      {
        \cs_set_eq:NN \fdu@kai \prg_do_nothing:
        \cs_set_eq:NN \quad    \c_space_tl
        \cs_set_eq:NN \qquad   \c_space_tl
      }
  }
\keys_define:nn { fdu }
  {
    info  .meta:nn = { fdu / info  } {#1},
    style .meta:nn = { fdu / style } {#1}
  }
\keys_set:nn { fdu }
  {
    style   / font            = times,
    style   / cjk-font        = fandol,
    style   / font-size       = -4,
    style   / fullwidth-stop  = false,
    style   / auto-make-cover = true,
    style   / logo            = { fudan-name.pdf },
    style   / logo-size       = { 0.5 \textwidth },
    style   / hyperlink       = color,
    style   / hyperlink-color = default,
    style   / bib-style       = numerical,
    info    / degree          = academic,
    info    / secret-level    = none,
    info    / school-id       = { 10246 },
    info    / date            = { \zhtoday },
    theorem / header-font     = { \sffamily },
    theorem / body-font       = { \fdu@kai },
    theorem / counter         = { chapter }
  }
\NewDocumentCommand \fdusetup { m }
  { \keys_set:nn { fdu } {#1} }
\newtheorem* { proof       } { \c__fdu_name_proof_tl      }
\newtheorem  { axiom       } { \c__fdu_name_axiom_tl      }
\newtheorem  { corollary   } { \c__fdu_name_corollary_tl  }
\newtheorem  { definition  } { \c__fdu_name_definition_tl }
\newtheorem  { example     } { \c__fdu_name_example_tl    }
\newtheorem  { lemma       } { \c__fdu_name_lemma_tl      }
\newtheorem  { theorem     } { \c__fdu_name_theorem_tl    }
\endinput
%%
%% End of file `fduthesis.cls'.
