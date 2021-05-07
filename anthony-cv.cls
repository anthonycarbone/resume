%% Start of file `anthony-cv.cls'.
% Anthony CV Class File
%
% This class has inherits from:
% https://github.com/posquit0/Awesome-CV
% and inspired from Derwent McElhinney's resume:
% https://github.com/derwentx/Resumee
%
% Author:
% Anthony Carbone <anthonydavidcarbone@gmail.com>
% http://www.anthonycarbone.github.io
%
% This class extends Awesome CV.

\LoadClass{awesome-cv}

%  Require soul package for letterspacing icons
% in icon-only entries
\RequirePackage{soul}

% To include SVGs
\RequirePackage{graphicx}
\RequirePackage{svg}


% Icon-only style
\newcommand*{\icononlystyle}[1]{%
    {\fontsize{24pt}{1em}
    \headerfontlight
    \color{graytext}
    #1}}

%-------------------------------------------------------------------------------
%                Extensions
%-------------------------------------------------------------------------------

% Re-define an environment for cvitems(for cventry)
% with smaller bullet-text spaces
\renewenvironment{cvitems}{%
  \vspace{-2.0mm}
  \begin{justify}
  \begin{itemize}[leftmargin=2ex, nosep, noitemsep]
    \setlength{\parskip}{0pt}
    \renewcommand{\labelitemi}{\bullet}
}{%
  \end{itemize}
  \end{justify}
  \vspace{-2.0mm}
}

% Define an icon section for CV
% Usage: \cvsectionIcon{<section-title>}{<icon>}
\newcommand{\cvsectionIcon}[2]{%
  \vspace{\acvSectionTopSkip}
  \sectionstyle{#1}
  \phantomsection
  \color{gray}
  \vhrulefill{0.9pt}
  {#2}
}

% Define an icon-only entry for CV
% Usage: \cvicononlyentry{<section-title>}{<icons>}
\newcommand{\cvicononlyentry}[2]{%
  %\vspace{\acvSectionTopSkip}
  \sectionstyle{#1}
  \phantomsection
  \color{gray}\vhrulefill{0.9pt}
  \icononlystyle{#2}
  \par
}

% References section from:
% https://github.com/posquit0/Awesome-CV/issues/94#issuecomment-639041339

% Make double column
\newcommand{\cvdoublecolumn}[2]{%
	\begin{minipage}[t]{{.48\linewidth}}#1\end{minipage}%
	\hfill%
	\begin{minipage}[t]{{.48\linewidth}}#2\end{minipage}%
}

% Reference entry {name}{}{}{}{Addess}{Email}{Mobile}
\newcommand{\cvreference}[8]{%
	\entrytitlestyle{#1}\newline% Name
	\ifthenelse{\equal{#2}{}}{}{#2\newline}%
	\ifthenelse{\equal{#3}{}}{}{#3\newline}%
	\ifthenelse{\equal{#4}{}}{}{\textit{#4}\newline}%
	\ifthenelse{\equal{#5}{}}{}{#5\newline}%
	\ifthenelse{\equal{#6}{}}{}{\faHome\acvHeaderIconSep~#6\newline}%
	\ifthenelse{\equal{#7}{}}{}{\href{mailto:#7}{\faEnvelope\acvHeaderIconSep~#7\newline}}%
	\ifthenelse{\equal{#8}{}}{}{\faMobile*\acvHeaderIconSep~#8\newline}}