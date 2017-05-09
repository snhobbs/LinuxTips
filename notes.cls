\ProvidesClass{notes}

\LoadClass[11pt, noindent]{memoir}
\usepackage[left=.75in, right=.75in, top=1in, bottom=1in]{geometry}
\setlength\parindent{0pt}
\setlength\textwidth{7in}

\makechapterstyle{AlexanderGrebenkov}{%
\renewcommand{\chapterheadstart}{\vspace
*
{\beforechapskip}\hrule\medskip}
\renewcommand{\chapnamefont}{\normalfont\large\scshape}
\renewcommand{\chapnumfont}{\normalfont\large\scshape}
\renewcommand{\chaptitlefont}{\normalfont\large\scshape}
\renewcommand{\printchaptername}{\S}
\renewcommand{\chapternamenum}{ }
\renewcommand{\printchapternum}{\chapnumfont \thechapter}
\renewcommand{\afterchapternum}{. }
\renewcommand{\afterchaptertitle}{\par\nobreak\medskip\hrule\vskip
\afterchapskip}
}
\chapterstyle{AlexanderGrebenkov}
\chapterstyle{ell}

\usepackage{longtable}
\settocdepth{subsection}

\usepackage{xcolor}%
\definecolor{darkblue}{RGB}{0,0,150}
\usepackage[linkbordercolor = darkblue, linkcolor=darkblue, urlcolor=darkblue, colorlinks=true]{hyperref}

\newcommand{\opt}[1]{$<$#1$>$}
\newcommand{\ra}{$\rightarrow$ {}}
\newcommand{\rsrc}[1]{\hspace{44pt}\textbf{#1: }}
\newcommand{\blank}{\_\_\_\_{} }
\newcommand{\FIXME}[1]{\textbf{\{FIXME: #1}\}}
\newcounter{questionSec}
\newcounter{questionCount}[questionSec]
\newcommand{\qItem}[2]{\stepcounter{questionCount} \textbf{\thequestionCount} & #1 & #2\\\hline}

\newenvironment{questions}[1]{\subsection{#1}
	%\centering{\large\textbf{#1}}\\
	%\vspace{2pt}\hrule\vspace{12pt}

	\newenvironment{questionAnswer}{
		\begin{longtable}{|r| p{.35\textwidth}|p{.55\textwidth}|}
		\hline\hline
		&&\\
		\stepcounter{questionSec}
	}{\hline\end{longtable}\vspace{11pt}}
}{}

\renewcommand\baselinestretch{1.2}
