%%
%% This is file `refart.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% refman.dtx  (with options: `refart')
%% 
%% Copyright (C) 1988-1994 by H. Partl.
%% Copyright (C) 1994-1999 by Axel Kielhorn.  All rights reserved.
%% For additional copyright information see further down in this file.
%% 
%% This file is to be used with the LaTeX2e system.
%% ------------------------------------------------
%% 
%% This program can be redistributed and/or modified under the terms
%% of the LaTeX Project Public License Distributed from CTAN
%% archives in directory macros/latex/base/lppl.txt; either
%% version 1 of the License, or any later version.
%% 
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{refart}
              [2006/11/13 v2.0e
     LaTeX document class]
\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagefalse
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}%
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}%
    \setlength\paperwidth  {7.25in}}
\newlength\papermarginwidth
\setlength\papermarginwidth  {1in}
\DeclareOption{smallborder}
   {\setlength\papermarginwidth  {0.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
\DeclareOption{square}
   {\setlength\paperheight {\paperwidth}}
\DeclareOption{dvips}{\AtBeginDocument{\AtBeginDvi{%
      \special{papersize=\the\paperwidth,\the\paperheight}}}}

\DeclareOption{pdftex}{\AtBeginDocument{%
    \pdfpagewidth=\paperwidth \pdfpageheight=\paperheight}}
\newcommand{\ref@ifpdfoutput}[2]{%
  \begingroup\@ifundefined{pdfoutput}{\endgroup #2}{\endgroup%
    \ifnum\pdfoutput>0\relax #1\else #2\fi}}%
\@ifundefined{ifpdfoutput}{%
  \let\ifpdfoutput\ref@ifpdfoutput}{%
\PackageInfo{refart}
    {\string\ifpdfoutput\space already defined.\MessageBreak
    If \string\ifpdfoutput\space does not behave like\MessageBreak
    is is described at the Refman manual, try find out\MessageBreak
    at which package \string\ifpdfoutput\space was defined.}}
\DeclareOption{pagesize}{\AtBeginDocument{%
    \ref@ifpdfoutput
    {\pdfpagewidth=\paperwidth\pdfpageheight=\paperheight}
    {\AtBeginDvi{\special{papersize=\the\paperwidth,\the\paperheight}}}}}
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{titlepage}  {\@titlepagetrue}
\DeclareOption{notitlepage}{\@titlepagefalse}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{%
    \ClassError{Refart}
    {There is no twocolumn layout in this class!}
    {Can you imagine how twocolumn layout will look\MessageBreak
     in this class? That's why!}
    \@twocolumnfalse}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%
  \AtEndOfClass{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}
\newif\ifdescriptioncolon \descriptioncolontrue
\newif\ifdescriptionleft  \descriptionleftfalse
\newif\ifmaxipagerule     \maxipageruletrue
\ExecuteOptions{letterpaper,10pt,oneside,onecolumn,final}
\ProcessOptions
\input{size1\@ptsize.clo}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip   {0.5\baselineskip \@plus 2\p@}
\setlength\parindent {\z@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setlength\headsep   {\baselineskip}
\newdimen\leftmarginwidth
\newdimen\fullwidth
\newdimen\emptyfoottopmargin
\newdimen\emptyheadtopmargin
\newcommand\settextfraction[1]%
{
  \setlength\fullwidth{\paperwidth}
  \addtolength\fullwidth{-2\papermarginwidth}
  \@settopoint\fullwidth
  \if@twocolumn
      \setlength\textwidth{\fullwidth}
  \else
      \setlength\textwidth{#1\fullwidth}
  \fi
  \@settopoint\textwidth
  \setlength\leftmarginwidth{\fullwidth}
  \addtolength\leftmarginwidth{-\textwidth}
  \setlength\oddsidemargin    {-1in}
  \addtolength\oddsidemargin  {\papermarginwidth}
  \addtolength\oddsidemargin  {\leftmarginwidth}
  \@settopoint\oddsidemargin
  \setlength\evensidemargin  {\oddsidemargin}
  \setlength\marginparwidth  {\leftmarginwidth
  }
  \addtolength\marginparwidth {-\marginparsep}
  \setlength\marginparpush    {0\p@}
}
\@onlypreamble\settextfraction
\settextfraction {0.7}

\setlength\@tempdima  {\paperheight}
\addtolength\@tempdima{-2\papermarginwidth}
\addtolength\@tempdima{-.5in}
\divide\@tempdima\baselineskip
\@tempcnta=\@tempdima
\setlength\textheight{\@tempcnta\baselineskip}
\advance\textheight by \topskip
\setlength\topmargin  {\paperheight}
\addtolength\topmargin{-\headheight}
\addtolength\topmargin{-\headsep}
\addtolength\topmargin{-\textheight}
\addtolength\topmargin{-\footskip}     % this might be wrong!
\addtolength\topmargin{-.5\topmargin}
\addtolength\topmargin{-1in}
\@settopoint\topmargin
\setlength\emptyfoottopmargin  {\topmargin}
\addtolength\emptyfoottopmargin{\baselineskip}
\setlength\emptyheadtopmargin  {\topmargin}
\addtolength\emptyheadtopmargin{-\baselineskip}
\setcounter{topnumber}    {2}
\renewcommand\topfraction {.7}
\setcounter{bottomnumber} {1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}  {3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber} {2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
\if@twoside
  \def\ps@plain{%
    \let\@mkboth\@gobbletwo
    \let\@oddhead\@empty
    \let\@evenhead\@empty
    \def\@oddfoot{\normalfont\hfil\thepage}
    \def\@evenfoot{\normalfont\thepage\hfil}}
\else
  \def\ps@plain{%
    \let\@mkboth\@gobbletwo
    \let\@oddhead\@empty
    \let\@evenhead\@empty
    \def\@oddfoot{\normalfont\hfil\thepage}
    \let\@evenfoot\@oddfoot}
\fi
\if@twoside
    \def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\hss\vbox to \z@{\vss\hsize=\fullwidth
      \hb@xt@\fullwidth{\thepage\hfil\slshape\leftmark}
      \vskip 3\p@ \hrule}}%
      \def\@oddhead{\hss\vbox to \z@{\vss\hsize=\fullwidth
      \hb@xt@\fullwidth{{\slshape\rightmark}\hfil\thepage}
      \vskip 3\p@ \hrule}}%
      \let\@mkboth\markboth
      \topmargin\emptyfoottopmargin
      \def\sectionmark##1{%
        \markboth {\ifnum \c@secnumdepth >\z@
            \thesection\quad\fi
            ##1}{}}%
      \def\subsectionmark##1{%
        \markright {\ifnum \c@secnumdepth >\@ne
            \thesubsection\quad\fi
            ##1}}}
\else
    \def\ps@headings{%
      \let\@oddfoot\@empty
      \def\@oddhead{\hss\vbox to \z@{\vss\hsize=\fullwidth
      \hb@xt@\fullwidth{{\slshape\rightmark}\hfil\thepage}
      \vskip 3\p@ \hrule}}%
      \let\@mkboth\markboth
      \topmargin\emptyfoottopmargin
      \def\sectionmark##1{%
        \markright {\ifnum \c@secnumdepth >\m@ne
            \thesection\quad\fi
            ##1}}}
\fi

\if@twoside
    \def\ps@footings{%
      \let\@oddhead\@empty\let\@evenhead\@empty
      \def\@evenfoot{\hss\vbox to \z@{\vss\hsize=\fullwidth
      \hrule \vskip 3\p@
      \hb@xt@\fullwidth{\thepage\hfil\slshape\leftmark}}}%
      \def\@oddfoot{\hss\vbox to \z@{\vss\hsize=\fullwidth
      \hrule \vskip 3\p@
      \hb@xt@\fullwidth{{\slshape\rightmark}\hfil\thepage}}}%
      \let\@mkboth\markboth
      \topmargin\emptyheadtopmargin
      \def\sectionmark##1{%
        \markboth {\ifnum \c@secnumdepth >\z@
            \thesection\quad\fi
            ##1}{}}%
      \def\subsectionmark##1{%
        \markright {\ifnum \c@secnumdepth >\@ne
            \thesubsection\quad\fi
            ##1}}}
\else
    \def\ps@footings{%
      \let\@oddhead\@empty
      \def\@oddfoot{\hss\vbox to \z@{\vss\hsize=\fullwidth
      \hrule \vskip 3\p@
      \hb@xt@\fullwidth{{\slshape\rightmark}\hfil\thepage}}}%
      \let\@mkboth\markboth
      \topmargin\emptyheadtopmargin
      \def\sectionmark##1{%
        \markright {\ifnum \c@secnumdepth >\m@ne
            \thesection\quad\fi
            ##1}}}
\fi
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\hss\vbox to \z@{\vss\hsize=\fullwidth
    \hb@xt@\fullwidth{\thepage\hfil\slshape\leftmark}
    \vskip 3\p@ \hrule}}%
    \def\@oddhead{\hss\vbox to \z@{\vss\hsize=\fullwidth
    \hb@xt@\fullwidth{{\slshape\rightmark}\hfil\thepage}
    \vskip 3\p@ \hrule}}%
    \let\@mkboth\@gobbletwo
    \let\sectionmark\@gobble
    \let\subsectionmark\@gobble
    \topmargin\emptyfoottopmargin
    }
\def\ps@myfootings{%
      \let\@oddhead\@empty\let\@evenhead\@empty
      \def\@evenfoot{\hss\vbox to \z@{\vss\hsize=\fullwidth
      \hrule \vskip 3\p@
      \hb@xt@\fullwidth{\thepage\hfil\slshape\leftmark}}}%
      \def\@oddfoot{\hss\vbox to \z@{\vss\hsize=\fullwidth
      \hrule \vskip 3\p@
      \hb@xt@\fullwidth{{\slshape\rightmark}\hfil\thepage}}}%
    \let\@mkboth\@gobbletwo
    \let\sectionmark\@gobble
    \let\subsectionmark\@gobble
    \topmargin\emptyheadtopmargin
    }
\if@titlepage
  \newcommand\maketitle{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let\footnote\thanks
  \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
  \def\@makefnmark%
      {\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
  \long\def\@makefntext##1{%
       \@setpar{\@@par
          \@tempdima = \hsize
          \advance\@tempdima -1em
          \parshape \@ne 1em \@tempdima}%
       \par\parindent 1em \noindent
       \hb@xt@\z@{\hss\@textsuperscript{\normalfont\@thefnmark}\,}##1}
  \null\vfil
  \vskip 60\p@
  \begin{center}%
    {\LARGE \@title \par}%
    \vskip 3em%
    {\large
     \lineskip .75em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
      \vskip 1.5em%
    {\large \@date \par}%       % Set date in \large size.
  \end{center}\par
  \@thanks
  \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  }
\else
  \newcommand\maketitle{\par
    \begingroup
      \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
      \def\@makefnmark%
          {\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
      \long\def\@makefntext##1{%
         \@setpar{\@@par
            \@tempdima = \hsize
            \advance\@tempdima -1em
            \parshape \@ne 1em \@tempdima}%
         \par\parindent 1em \noindent
         \hb@xt@\z@{\hss\@textsuperscript{\normalfont\@thefnmark}\,}##1}
      \if@twocolumn
        \ifnum \col@number=\@ne
          \@maketitle
        \else
          \twocolumn[\@maketitle]%
        \fi
      \else
        \newpage
        \global\@topnum\z@   % Prevents figures from going at top of page.
        \@maketitle
      \fi
      \thispagestyle{empty}\@thanks
    \endgroup
    \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
  \def\@maketitle{%
    \newpage
    \null
    \longthickrule\vskip1.5em%
    \let \footnote \thanks
    {\secshape \parskip\z@ \parindent\z@
    \Large\bfseries \@title \par}%
    \vskip1.5em\longthickrule\vskip1.5em%
    {\normalsize
      \lineskip .5em%
      \begin{flushright}%
        {\slshape\@author\par}
        \vskip 1em%
        {\@date}%
      \end{flushright}\par}%
    \vskip 1.5em}
\fi
\setcounter{secnumdepth}{3}
\newcounter {part}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand\thepart          {\@Roman\c@part}
\renewcommand\thesection       {\@arabic\c@section}
\renewcommand\thesubsection    {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection {\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph     {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph  {\theparagraph.\@arabic\c@subparagraph}
\newcommand\part{%
   \if@noskipsec \leavevmode \fi
   \par
   \addvspace{4ex}%
   \@afterindentfalse
   \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >\m@ne
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
     \longrule\medskip
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \Large
     \ifnum \c@secnumdepth >\m@ne
     \thepart.\quad
     \fi
     #2\par \medskip
     \longrule\bigskip%
     \markboth{}{}\par}%
    \nobreak
    \vskip 3ex
    \@afterheading}
\def\@spart#1{%
    \longrule\medskip
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \Large #1\par}%
    \medskip\longrule
     \nobreak
     \vskip 3ex
     \@afterheading}
\newcommand\secshape{\leftskip=-\leftmarginwidth%
                     \rightskip=\@flushglue%
                     \hyphenpenalty=2000}
\newcommand\section{\@startsection {section}{1}{\z@}%
                                   {-2ex \@plus -1ex \@minus -.2ex}%
                                   {0.5ex \@plus .2ex}%
                                   {\secshape\normalfont\large\bfseries}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-1.5ex\@plus -.5ex \@minus -.2ex}%
                                     {0.5ex \@plus .2ex}%
                                     {\secshape\normalfont\normalsize\bfseries}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-1.5ex\@plus -.5ex \@minus -.2ex}%
                                     {0.5ex \@plus .2ex}%
                                     {\secshape\normalfont\normalsize\mdseries}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {2ex\@plus 1ex \@minus .2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {2ex \@plus 1ex \@minus .2ex}%
                                       {-1em}%
                                       {\normalfont\normalsize\bfseries}}
\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength\leftmargin    {\leftmargini}
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\def\@listI{\leftmargin\leftmargini
            \parsep \parskip
            \topsep \z@
            \itemsep\z@}
\let\@listi\@listI
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    \z@
              \parsep    \parskip
              \itemsep   \z@}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    \z@
              \parsep    \parskip
              \partopsep \z@
              \itemsep   \topsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
\renewcommand\theenumi  {\@arabic\c@enumi}
\renewcommand\theenumii {\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv {\@Alph\c@enumiv}
\newcommand\labelenumi  {\theenumi.}
\newcommand\labelenumii {(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv {\theenumiv.}
\renewcommand\p@enumii  {\theenumi}
\renewcommand\p@enumiii {\theenumi(\theenumii)}
\renewcommand\p@enumiv  {\p@enumiii\theenumiii}
\newcommand\labelitemi  {\textbullet}
\newcommand\labelitemii {\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv {\textperiodcentered}
\newenvironment{description}
               {\list{}{%
                    \labelsep\marginparsep
                    \labelwidth\leftmarginwidth
                    \advance\labelwidth by \leftmargin
                    \advance\labelwidth by -\labelsep
                    \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{%
            \ifdescriptionleft\else \hfil\fi
            \normalfont #1 \ifdescriptioncolon :\fi
            \ifdescriptionleft \hfil \fi}
\if@titlepage
  \newenvironment{abstract}{%
      \titlepage
      \null\vfil
      \@beginparpenalty\@lowpenalty
      \begin{center}
        \bfseries \abstractname
        \@endparpenalty\@M
      \end{center}}
     {\par\vfil\null\endtitlepage}
\else
  \newenvironment{abstract}{%
      \if@twocolumn
        \section*{\abstractname}%
      \else
        \small
        \begin{center}%
          {\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
        \end{center}%
        \quote
      \fi}
      {\if@twocolumn\else\endquote\fi}
\fi
\newenvironment{verse}
               {\let\\=\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}
\newenvironment{example}
               {\@beginparpenalty=\@highpenalty
               \let\\=\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \ttfamily
                \item\relax}
               {\endlist}
\newenvironment{titlepage}
               {\if@twocolumn
                  \@restonecoltrue\onecolumn
                \else
                  \@restonecolfalse\newpage
                \fi
                \thispagestyle{empty}%
                \setcounter{page}\@ne
               }
               {\if@restonecol\twocolumn \else \newpage \fi
                \if@twoside\else
                  \setcounter{page}\@ne
                \fi
               }
\newcommand\appendix{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \gdef\thesection{\@Alph\c@section}}
\setlength\arraycolsep   {5\p@}
\setlength\tabcolsep     {6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep {2\p@}
\setlength\tabbingsep    {\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep {3\p@}
\setlength\fboxrule{.4\p@}
\renewcommand\theequation{\@arabic\c@equation}
\newcounter{figure}
\renewcommand \thefigure {\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*{\cal}{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*{\mit}{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg {2.55em}
\newcommand\@dotsep   {4.5}
\setcounter{tocdepth}{3}
\newcommand\tableofcontents{%
    \section*{\contentsname
        \@mkboth{\contentsname}{\contentsname}}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty\@secpenalty
    \addvspace{2.25em \@plus\p@}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hbox to\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
      \endgroup
  \fi}
\newcommand*\l@section[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty\@secpenalty
    \addvspace{1.0em \@plus\p@}%
    \setlength\@tempdima{1.5em}%
    \begingroup
    \parindent \z@ \rightskip \@pnumwidth
    \parfillskip -\@pnumwidth
    \leavevmode \bfseries
    \advance\leftskip\@tempdima
    \hskip -\leftskip
    #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
   \endgroup
 \fi}
\newcommand*\l@subsection   {\@dottedtocline{2}{1.5em}{2.3em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\newcommand*\l@paragraph    {\@dottedtocline{4}{7.0em}{4.1em}}
\newcommand*\l@subparagraph {\@dottedtocline{5}{10em}{5em}}
\newcommand\listoffigures{%
    \section*{\listfigurename
      \@mkboth{\listfigurename}%
              {\listfigurename}}%
    \@starttoc{lof}%
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \section*{\listtablename
      \@mkboth{\listtablename}{\listtablename}}%
    \@starttoc{lot}%
    }
\let\l@table\l@figure
\newdimen\bibindent
\bibindent=1.5em
\newenvironment{thebibliography}[1]
     {\section*{\refname
         \@mkboth{\refname}{\refname}}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
            \sloppy
            \clubpenalty4000
            \@clubpenalty \clubpenalty
            \widowpenalty4000%
      \sfcode`\.=\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \begin{fullpage}
                \let\twocolumn\REF@twocolumn
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\section*{\indexname}]%
                \@mkboth{\indexname}%
                        {\indexname}%
                \parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\end{fullpage}\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem  {\par\hangindent 40\p@}
\newcommand\subitem   {\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern 2.6\p@}
\long\def\@makefntext#1{%
   \@setpar{\@@par
      \@tempdima = \hsize
      \advance\@tempdima -1em
      \parshape \@ne 1em \@tempdima}%
    \par\parindent 1em \noindent
    \hb@xt@\z@{\hss\@textsuperscript{\normalfont\@thefnmark}\,}#1}
\def\@addmarginpar{\@next\@marbox\@currlist{\@cons\@freelist\@marbox
    \@cons\@freelist\@currbox}\@latexbug\@tempcnta\@ne
    \if@twocolumn
       \if@firstcolumn \@tempcnta\m@ne \fi
    \else
       \@tempcnta\m@ne
    \fi
    \ifnum\@tempcnta <\z@  \global\setbox\@marbox\box\@currbox \fi
    \@tempdima\@mparbottom
    \advance\@tempdima -\@pageht
    \advance\@tempdima\ht\@marbox
    \ifdim\@tempdima >\z@
       \@@warning{Marginpar on page \thepage\space moved}%
    \else
       \@tempdima\z@
    \fi
    \global\@mparbottom\@pageht
    \global\advance\@mparbottom\@tempdima
    \global\advance\@mparbottom\dp\@marbox
    \global\advance\@mparbottom\marginparpush
    \advance\@tempdima -\ht\@marbox
    \global\setbox \@marbox
    \vbox {\vskip \@tempdima \box \@marbox}%
    \global \ht\@marbox \z@
    \global \dp\@marbox \z@
    \kern -\@pagedp
    \nointerlineskip
    \hb@xt@\columnwidth
      {\ifnum \@tempcnta >\z@
          \hskip\columnwidth \hskip\marginparsep
       \else
          \hskip -\marginparsep \hskip -\marginparwidth
       \fi
       \box\@marbox \hss}%
    \nointerlineskip
    \hbox{\vrule \@height\z@ \@width\z@ \@depth\@pagedp}}
\newcommand*{\marginlabel}[1]
{\mbox{}\marginpar{\raggedleft #1}\ignorespaces}
\newcommand*{\seealso}[1]
    {\mbox{}\marginpar{\small $\rightarrow$ #1}\ignorespaces}
\newcommand*{\attention}[1][\attentionsymbol]
    {\mbox{}\marginpar{\raggedleft #1}}
\newcommand*{\attentionsymbol}{\large\bfseries ! $\rightarrow$}
\def\longrule{\par\hb@xt@\linewidth{\hss
              \vrule width \fullwidth height 0.4\p@ depth \z@}\par}
\def\longthickrule{\par\hb@xt@\linewidth{\hss
              \vrule width \fullwidth height 1.0\p@ depth \z@}\par}
\newenvironment{maxipage}{\par
              \mbox{}\kern-\leftmarginwidth %\kern-\@totalleftmargin
              \begin{minipage}{\fullwidth}
                \medskip \ifmaxipagerule \hrule\medskip \fi
                \parskip = 0.5\baselineskip
                \def\marginpar{%
                \ClassError{Refart}
                {Marginpar not allowed within Maxipage.}
                {Where should I put them?\MessageBreak
                 I'm using the full pagewidth.}}}
              {\par \vskip\parskip
                 \medskip \ifmaxipagerule \hrule\medskip \fi
               \end{minipage}\par}
\newenvironment{fullpage}{%
              \clearpage
              \textwidth=\fullwidth
              \addtolength\oddsidemargin  {-\leftmarginwidth}
              \setlength\evensidemargin{\oddsidemargin}
              \leftmarginwidth=\z@
              \hsize=\fullwidth
              \linewidth=\fullwidth
              \columnwidth=\fullwidth
              \def\marginpar{%
                \ClassError{Refart}
                {Marginpar not allowed within Fullpage.}
                {Where should I put them? I'm already\MessageBreak
                 using the whole page for text.}}}
              {\clearpage}
\def\condbreak#1{\vskip \z@ plus #1\pagebreak[3]\vskip \z@ plus -#1\relax}
\def\noparskip{\vskip-\parskip}
\let\REF@twocolumn\twocolumn
\def\twocolumn{%
\ClassError{Refart}
{Sorry, there is no twocolumn layout in this class}
{Can you imagine how twocolumn layout will look?\MessageBreak
 That's why!}}
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\refname{References}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{plain}
\pagenumbering{arabic}      % Arabic page numbers
\if@twoside
\else
  \raggedbottom
\fi
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi
\endinput
%%
%% End of file `refart.cls'.