\ProvidesClass{original_setting}
\LoadClass[a4paper]{article}
% ========== 基础宏包 ==========
\RequirePackage[includeheadfoot]{geometry}
\geometry{top=1.5cm, bottom=1.75cm, left=3.17cm, right=3.17cm}
\RequirePackage{fancyhdr}
\RequirePackage{setspace}
\RequirePackage[toc,page]{appendix}
\RequirePackage{lastpage}
\RequirePackage{extramarks}
\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage{wrapfig}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{listings}
\RequirePackage{indentfirst}
\RequirePackage{url}
\RequirePackage{cite}
\RequirePackage{xcolor}
\RequirePackage[font=footnotesize,tableposition=top]{caption}

\captionsetup{
    labelsep=quad,
    aboveskip=0pt,
    belowskip=-12pt,
    parskip=0pt,
}
\renewcommand{\captionfont}{\zihao{5}\songti\linespread{1.25}\selectfont}%
\renewcommand{\captionlabelfont}{\zihao{5}}


% ========== 字体设置 + 强制开启ctex标题模块 ==========
\RequirePackage{fontspec}
\RequirePackage[heading]{ctex}
\setmainfont{Times New Roman}
\setCJKmainfont[
    Path=C:/Windows/Fonts/,
    BoldFont=simhei.ttf
]{simsun.ttc}

% ========== 代码块 ==========
\lstset{columns=flexible,lineskip=-3pt,basicstyle=\small\ttfamily}

% ========== 空白页 ==========
\RequirePackage{afterpage}
\newcommand\blankpage{\null\thispagestyle{empty}\addtocounter{page}{-1}\newpage}

% ========== 数学公式 ==========
\RequirePackage{enumitem,bm,amsmath,amssymb,amsbsy,cancel,amsthm,array,ifthen}
\newcommand{\ud}{\mathrm{d}}
\makeatletter\@addtoreset{equation}{section}\makeatother
\renewcommand{\theequation}{\arabic{section}.\arabic{equation}}

% ==================== 无警告、无报错、100%生效标题设置 ====================
\ctexset{
    section = {
      format = \clearpage\null\centering\linespread{1.25}\zihao{3}\selectfont\heiti,
      aftername = \quad,
      indent = 0pt,
      beforeskip = 48bp,
      afterskip = 24bp
     },
    subsection = {
            format =\null\linespread{1.25}\zihao{4}\selectfont\heiti,
            numberformat = \zihao{3},
            aftername = \quad,
            indent = 0pt,
            beforeskip = 6bp,
            afterskip = 0bp
        },
    subsubsection = {
            format =\null \linespread{1.25}\zihao{-4}\selectfont\bfseries,
            numberformat = \bfseries,
            aftername = \quad,
            indent = 0pt,
            beforeskip = 6bp,
            afterskip = 0bp
        }
}
% ========== 目录名称 ==========
\RequirePackage{tocloft}

% 核心：延后执行覆盖ctex + 修复语法错误 + 完美居中
\makeatletter
\AtBeginDocument{
    \renewcommand{\contentsname}{目\quad\quad 录}
    \renewcommand{\tableofcontents}{%
        \clearpage
        {\centering\linespread{1.25}\selectfont\zihao{3}\heiti \contentsname\par}% 分组+居中
        \vspace{24bp}% 段后24磅
        \@starttoc{toc}%
    }
}
\makeatother

% 一级目录
\renewcommand{\cftsecfont}{\zihao{-4}\heiti}
\renewcommand{\cftsecpagefont}{\zihao{-4}\heiti}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\cftsetindents{section}{0em}{0em}
\cftbeforesecskip=0pt

% 二级目录
\renewcommand{\cftsubsecfont}{\zihao{-4}\songti}
\renewcommand{\cftsubsecpagefont}{\zihao{-4}\songti}
\cftsetindents{subsection}{1.5em}{0em}
\cftbeforesubsecskip=0pt

% 三级目录
\renewcommand{\cftsubsubsecfont}{\zihao{-4}\songti}
\renewcommand{\cftsubsubsecpagefont}{\zihao{-4}\songti}
\cftsetindents{subsubsection}{2.5em}{0em}
\cftbeforesubsubsecskip=0pt
%%%%%%%%%页眉页尾格式%%%%%%%%%
\newcommand{\thesistitlefancyhead}{东北师范大学学士学位论文} % 定义论文题目为页眉
\pagestyle{fancy}
\fancyhf{}
\fancyhead{}
\fancyhead[C]{\thesistitlefancyhead{}} % 页眉设置为论文标题
\fancyfoot[C]{\thepage}
%%%%%%%%%%%%页眉页尾格式%%%%%%%%%%%
% ========== hyperref ==========

\RequirePackage{hyperref}
\hypersetup{colorlinks=true,linkcolor=black,citecolor=black,urlcolor=black}