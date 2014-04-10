%# -*- coding:utf-8 -*-
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{Board}
    [2012/02/24 v1.0 GaoHua document class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

\LoadClass[12pt,a4paper,openany,fntef,nofonts]{ctexbook}

\RequirePackage[xetex]{geometry}
\RequirePackage[perpage,stable,bottom]{footmisc}
\RequirePackage{quoting,needspace,afterpage,varwidth,pifont}
\RequirePackage[pagestyles,explicit,clearempty,outermarks]{titlesec}
\RequirePackage[titlesec]{interfaces}
\RequirePackage[xetex, bookmarksnumbered, pdfstartview={XYZ null null 1}, pdfborder=001,
                pdfpagemode=UseNone, pdfprintscaling=None]{hyperref}
\RequirePackage{graphicx,psfrag}     % 图形宏包
\RequirePackage{subfigure}
\RequirePackage{multirow}            %使用multirow必须加载该package
\RequirePackage{array}
\RequirePackage{textcomp,booktabs,longtable,caption2}
%longtable宏包一定要放在caption2宏包之前. longtalbe后面也不能用array宏包，否则表格线对不齐
\RequirePackage[usenames,dvipsnames]{color}                 % 支持彩色
\RequirePackage[table]{xcolor}        % 支持表格交替颜色,需要在 documentclass 的选项中增加 table
\RequirePackage{colortbl}               %单元格加背景
\RequirePackage{enumerate}             %用于item中识别序号（1）（2）等等
\RequirePackage{threeparttable}   %% 表格添加注解
%\RequirePackage{background}  %%水印
\RequirePackage{framed} % 文本加背景

\RequirePackage{tikz}
\usetikzlibrary{arrows,chains}

\predisplaypenalty   = \z@
\postdisplaypenalty  = \z@
\clubpenalty         = \z@
\widowpenalty        = \z@
\displaywidowpenalty = \z@
\interlinepenalty    = \z@
\parskip             = \z@

\raggedbottom

\title{三联公司董事会资料}
\author{王\enspace 敏杰}

\hypersetup{
  linktoc=all,
  pdfstartview=FitH,
  bookmarksopen=true,
  pdfinfo={
    Title   = {\@title},
    Author  = {\@author},
    Creator = {XeLaTeX + xeCJK + CTeX}
  }
}

\let\HyPsd@Warning\@gobble

%a4paper={210mm,297mm}
%\geometry{papersize={210mm,297mm}, textwidth=152mm, textheight=215mm, inner=20mm,
%          top=30mm, bindingoffset=5mm, headheight=10mm, headsep=6mm, foot=5mm}
\geometry{papersize={210mm,297mm}, textheight=190mm,textwidth=140mm,left=25mm,right=25mm,
top=35mm, bottom=35mm}


\setmainfont{TeX Gyre Pagella}



\newrobustcmd*~{\unskip\hskip 0.2em minus 0.05em\ignorespaces}

\xeCJKsetup {
   CheckSingle = true,
  AutoFakeBold = false,
 AutoFakeSlant = false,
     CJKecglue = {~},
    PunctStyle = kaiming,
 KaiMingPunct+ = {：；},
}

%\defaultCJKfontfeatures{GB18030=*}

\setCJKmainfont[
     BoldFont=方正黑体简体,
   ItalicFont=方正精楷简体,
  SlantedFont=方正仿宋简体,
]{方正仿宋简体}

\setCJKsansfont[
     BoldFont=方正黑体简体,
   ItalicFont=方正精楷简体,
  SlantedFont=方正仿宋简体,
]{方正中等线简体}

\setCJKmonofont[
     BoldFont=方正黑体简体,
   ItalicFont=方正精楷简体,
  SlantedFont=方正仿宋简体,
]{方正精楷简体}


\newCJKfontfamily{\song}{SimSun}
\newCJKfontfamily{\hei}{SimHei}
\newCJKfontfamily{\kai}{KaiTi_GB2312}
\newCJKfontfamily{\fs}{FangSong_GB2312}
\newCJKfontfamily{\fzcusong} {方正粗宋简体}               % 方正粗宋
\newCJKfontfamily{\fzbykans} {方正博雅刊宋_GBK}           % 方正博雅刊宋
\newCJKfontfamily{\fzwkai}   {方正北魏楷书_GB18030}       % 方正北魏楷书
\newCJKfontfamily{\fzltheib} {方正兰亭特黑扁_GBK}         % 方正兰亭黑扁
\newCJKfontfamily{\fzydzhhei}{方正韵动中黑简体}           % 方正韵动中黑
\newCJKfontfamily{\fzzhysong}{方正中雅宋_GBK}             % 方正中雅宋
\newCJKfontfamily{\fzqiti}   {方正启体简体}               % 方正启体
\newCJKfontfamily{\fzjk}   {方正精楷简体}
\newCJKfontfamily{\fzliukai} {方正苏新诗柳楷简体}
\newCJKfontfamily{\fzxbsj}{方正小标宋简体}
\newCJKfontfamily{\fzkai}{方正楷体简体}
\newCJKfontfamily{\fzfangsong}{方正仿宋简体}

%----------------------------------重定义字号命令--------------------------------------------------
\newcommand{\linghao}{\fontsize{48pt}{60pt}\selectfont}      % 零号, 1.4倍行距
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}  % 初号& 42pt
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont} % 小初号& 36pt
\newcommand{\yihao}{\fontsize{28pt}{38pt}\selectfont}        % 一号, 1.4倍行距
\newcommand{\erhao}{\fontsize{21pt}{28pt}\selectfont}        % 二号, 1.25倍行距
\newcommand{\xiaoer}{\fontsize{18pt}{18pt}\selectfont}       % 小二, 单倍行距
\newcommand{\sanhao}{\fontsize{16pt}{24pt}\selectfont}       % 三号, 1.5倍行距
\newcommand{\xiaosan}{\fontsize{15pt}{22pt}\selectfont}      % 小三, 1.5倍行距
\newcommand{\sihao}{\fontsize{14pt}{21pt}\selectfont}        % 四号, 1.5倍行距
\newcommand{\xiaosihao}{\fontsize{12pt}{18pt}\selectfont}    % 小四, 1.5倍行距
\newcommand{\dawuhao}{\fontsize{11pt}{11pt}\selectfont}      % 大五号, 单倍行距
\newcommand{\wuhao}{\fontsize{10.5pt}{10.5pt}\selectfont}    % 五号, 单倍行距
\newcommand{\xiaowuhao}{\fontsize{9pt}{9pt}\selectfont}      % 小五号, 单倍行距
\newcommand{\liuhao}{\fontsize{7.5pt}{7.5pt}\selectfont}    % 六号, 单倍行距
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}
%--------------------------------------------------------------------------------------------

%=========定义颜色===================================
\definecolor{blueblack}{cmyk}{0,0,0,0.35}%浅黑
\definecolor{darkblue}{cmyk}{1,0,0,0}%纯蓝
\definecolor{lightblue}{cmyk}{0.15,0,0,0}%浅蓝
\definecolor{mygray}{gray}{.9}
\definecolor{mypink}{rgb}{.99,.91,.95}
\definecolor{mycyan}{cmyk}{.3,0,0,0}
%-------------------------------------------------------------------------------

%===================封面=================================
\renewcommand\maketitle{%
  \cleardoublepage
  \thispagestyle{empty}

  \begin{center}
     \parbox[t][10cm][c]{\textwidth}{
     \begin{center} { \xiaochuhao \fzxbsj  四川三联卷烟材料有限公司 \\
         {\vspace*{1cm}\yihao \fzkai 第三届董事会第一次会议文件  }}
       \end{center}
     }
    \parbox[t][12cm][b]{\textwidth}{
      \begin{center} {\xiaoer \fzkai 二零一四年四月 $\cdot$ 望江宾馆 } \end{center}
     }
    \end{center}
 \clearpage
}
%=========================================================



%=========================================================
% 定制图形和表格标题样式

\newcommand{\minitab}[2][l]{\begin{tabular}{#1}#2\end{tabular}} %%用于表格中跨行
\newcommand\spacecell[1]{\multicolumn{1}{r}{\small #1}}         %%%表格上加万元
\newcommand{\corcmidrule}[1][2pt]{% \corcmidrule[<len>]
  \\[\dimexpr-\normalbaselineskip-\belowrulesep-\aboverulesep-#1\relax]%
}

\setlength{\abovecaptionskip}{1ex}
\setlength{\belowcaptionskip}{1.5ex}
\renewcommand{\captionfont}{\kai \sihao \bf} %% 标题
\renewcommand{\captionlabelfont}{\hei \sihao}  %% 表头
%=========================================================



%==========selfdefined table-environment==========
\newenvironment{mytable}[1]{%
    \begin{table}[!hbtp]%
    \renewcommand{\arraystretch}{1.3}
    \centering \xiaosihao
     \caption{#1}
     \rowcolors{2}{darkblue!20}{white}  %% start_row:odd_color:even_color
     \begin{tabular}%
}{%
      \end{tabular}%
  \end{table}%
}

%=========================================================



%========================fontsize=================================
\renewcommand\baselinestretch{1.3}
\setlength{\parskip}{0pt plus3pt minus0pt}

 %\renewcommand\normalsize{%
 % \@setfontsize\normalsize{16pt}{24pt}
 % \abovedisplayskip=10bp \@plus 2bp \@minus 2bp
 % \abovedisplayshortskip=10bp \@plus 2bp \@minus 2bp
 % \belowdisplayskip=\abovedisplayskip
 % \belowdisplayshortskip=\abovedisplayshortskip}
%=========================================================

\let\origemph\emph
\renewcommand*\CJKunderlinecolor{}
\renewcommand*\ULthickness{.8\p@}
\newrobustcmd*\emphfont{\normalfont\bfseries}
\DeclareTextFontCommand\@textemph{\emphfont}
\renewrobustcmd\emph[1]{%
  \ifdefstrequal{\f@series}{\bfdefault}
    {\@textemph{\CTEXunderline{#1}}}
    {\@textemph{#1}}}

\newbool{@preface}

\newcommand*\titlematter{%
  \cleardoublepage
  \boolfalse{@mainmatter}
  \pagestyle{empty}%
  \pagenumbering{Alph}}
\renewcommand*\frontmatter{%
  \cleardoublepage
  \boolfalse{@mainmatter}%
  \booltrue{@preface}%
  \pagestyle{main}%
  \pagenumbering{Roman}}
\renewcommand*\mainmatter{%
  \cleardoublepage
  \booltrue{@mainmatter}%
  \boolfalse{@preface}%
  \pagestyle{main}%
  \pagenumbering{arabic}}
\renewcommand*\backmatter{%
  \cleardoublepage
  \boolfalse{@mainmatter}%
  \boolfalse{@preface}%
  \def\toclevel@chapter{-1}}
\newcommand*\fillinner{%
  \ifbool{@twoside}
    {\ifnumodd\c@page\raggedleft\raggedright}
    {\raggedleft}}
\newcommand*\fillouter{%
  \ifbool{@twoside}
    {\ifnumodd\c@page\raggedright\raggedleft}
    {\raggedright}}

\quotingsetup{
         font=itshape,
        vskip=\z@,
   leftmargin=\parindent,
  rightmargin=\z@,
  indentfirst=auto}

\DeclareRobustCommand*\KG{\kern\ccwd}
\DeclareRobustCommand*\@cdot{\textcentereddot}
\pdfstringdefDisableCommands\def\KG{\space\space}

\renewcommand*\contentsname{目\KG 录}
\newcommand*\prefacename{前\KG 言}
\newcommand*\postfacename{后\KG 记}
\newcommand*\titlename{\@title}
\newcommand*\authorname{\@author}

\NewDocumentEnvironment{pre-post-text}{g}{%
  \IfNoValueTF{#1}{%
    \ifbool{@preface}
      {\def\@preposttitle{\prefacename}}
      {\def\@preposttitle{\postfacename}}%
  }{%
    \def\@preposttitle{#1}%
  }
  \chapter{\@preposttitle}%
  \kaishu
}{%
  \relax
}

\newcommand\Sign[2][\authorname]{%
  \par\nopagebreak\bigskip\nopagebreak\null\hfill
  \varwidth[c]{.5\linewidth}%
    \centering
    \mbox{\fzliukai\large #1}\\
    \mbox{\normalfont\small #2}%
  \endvarwidth\quad
}

\renewcommand*\tableofcontents{%
  \cleardoublepage
  \begingroup
    \boolfalse{@mainmatter}%
    \let\addtocontents\@gobbletwo
    \chapter{\contentsname}%
    \let\KG\relax
    \@starttoc{toc}%
  \endgroup}

\newdimen\ruleheight
\ruleheight=.8\p@
\renewcommand\setheadrule[2][2mm]{%
  \ifdimequal{#1}{\z@}
    {\let\makeheadrule\@empty}
    {\def\makeheadrule{\rule[-#1]{\linewidth}{#2}}}%
}

\newcommand*\showthepage{\bfseries\rmfamily\@cdot\enskip\thepage\enskip\@cdot}

\newpagestyle{main}[\sffamily\zihao{-4}]{%
  \sethead[\showthepage][]
    [\ifthechapter{\CTEXthechapter\KG\chaptertitle}{\titlename}]
	  {\ifthesection{\CTEXthesection\KG\sectiontitle}
      {\ifthechapter{\CTEXthechapter\KG\chaptertitle}{\chaptertitle}}}
    {}{\showthepage}%
  \setheadrule\ruleheight}

\renewpagestyle{plain}{}

\def\ttl@chapterout{\typeout{\CTEXthechapter}}

\def\FixCTEXtoclabel#1{%
  \csdef{ttl@toc#1}{%
    \def\ttl@a{\protect\numberline{\csuse{CTEXthe#1}}}%
  }%
}

\forcsvlist\FixCTEXtoclabel{part,chapter,section,subsection}

\let\orig@CTEXthepart\CTEXthepart
\renewcommand*\CTEXthepart{\ifcase\c@part\orig@CTEXthepart\or 上编\or 下编\else\orig@CTEXthepart\fi}

\sectionformat\part{%
     class=page,
     shape=block,
    format=\large\centering\bfseries,
     label=\raggedright\fzydzhhei\fbox{\ziju{.5}\CTEXthepart}\\ \vspace{\stretch{1}},
    before=\zihao{1}\fzcusong\ziju{.1}#1,
     after=\vspace{\stretch{2}}\afterpage{\cleardoublepage}}

\sectionformat\chapter{%
     class=top,
     shape=block,
    format=\zihao{2}\bfseries\fzzhysong\ifthechapter{\fillinner}{\filcenter},
     label=\fzzhysong\fillouter\zihao{2}\CTEXthechapter\\[-2\p@]\titlerule[\ruleheight]\smallskip,
  labelsep=\z@,
    before=\varwidth[t]{\dimexpr\textwidth-3\ccwd\relax}#1\endvarwidth,
       top=\z@,
    bottom=1.5\baselineskip}



 \sectionformat\chapter*{%
     shape=block,
    format=\zihao{4}\bfseries\fzzhysong\fillinner,
    before=#1,
     after=\vspace{\baselineskip}\titlerule[\ruleheight],
       top=\bigskipamount,
    bottom=2\baselineskip}

\sectionformat\section{%
     class=straight,
     shape=hang,
    format=\Needspace{.2\textheight}\bfseries\zihao{3}\fzzhysong\filright,
     label=\CTEXthesection,
  labelsep=.8\ccwd,
    before=\rule\z@{2\ccwd}#1,
       top=\bigskipamount,
    bottom=\bigskipamount,
      left=\z@}


\pretocmd\part\cleardoublepage{}{}

\newrobustcmd*\DingNum[1]{%
  \ifnumgreater{#1}{10}%
    {\typeout{The value of input number is \number#1, larger than 10}}{}%
  \ding{\number\numexpr#1 + 171\relax}}
\newcommand*\Ding[1]{\DingNum{\value{#1}}}

\ifdefdimen\footnotemargin{}{\newdimen\footnotemargin}
\renewcommand*\thefootnote{\Ding{footnote}}
\renewcommand*\footnoterule{%
  \kern-3.5\p@
  \hrule\@width.45\columnwidth\@height.5\p@\relax
  \kern3\p@}
%\settowidth\footnotemargin{\footnotesize\DingNum{1}}
\settowidth\footnotemargin{\normalsize\DingNum{1}}
\footnotemargin=\dimexpr1.5\footnotemargin\relax
\renewcommand\@makefntext[1]{%
  \@setpar{\@@par
           \@tempdima=\dimexpr\hsize-\footnotemargin\relax
           \parshape\@ne\footnotemargin\@tempdima\relax
           \widowpenalty=\@M\relax}%
  \par\CTEXindent\noindent
  \linespread{1.2}\selectfont
  \llap{\makebox[\footnotemargin][l]{\@thefnmark}}%
  \ignorespaces#1}
\renewcommand*\@makefnmark{\raisebox{1ex}[\z@]{\normalfont\normalsize\@thefnmark}}
\footnotesep=\dimexpr1.2\footnotesep\relax

\let\orig@footnote\footnote
\RenewDocumentCommand\footnote{ o +m }{%
  \IfNoValueTF{#1}
    {\unskip\unskip\orig@footnote{#2}\ignorespaces}
    {\unskip\unskip\orig@footnote[#1]{#2}\ignorespaces}}

\renewenvironment{thebibliography}[1]{%
  \chapter{\bibname}
  \linespread{1.25}\small
  \list{%
    \llap{\@biblabel{\@arabic\c@enumiv}}\ignorespaces
  }{%
    \settowidth\labelwidth{\@biblabel{#1}}%
    \labelsep=.5\ccwd
    \leftmargin=\dimexpr\labelwidth+\labelsep\relax
    \topsep\z@
    \itemsep\z@
    \parsep\parskip
    \partopsep\parskip
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand*\theenumiv{\@arabic\c@enumiv}
  }%
  \widowpenalty\@M
}{%
  \def\@noitemerr{\@latex@warning{Empty `thebibliography' environment}}%
  \endlist
}

\newcounter{itemsection}
\newcommand\itemsection[1]{%
  \item[]\bigskip
  \refstepcounter{itemsection}%
  \mbox{\normalsize\bfseries\chinese{itemsection}、#1}%
  \medskip}

\let\orig@bibitem\bibitem
\renewcommand*\bibitem[1]{\orig@bibitem{bib-\the\c@enumiv}}

\newcommand\named[1]{%
  \unskip\nobreak\hfill\allowbreak\null\nobreak\hfill\quad\hbox{\normalfont ——\,#1}}

\endinput
%%
%% End of file `GaoHua.cls'.
