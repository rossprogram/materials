\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ross}[2017/05/02 Ross Class]
 
\LoadClass[12pt]{article}
\RequirePackage{xcolor}
\definecolor{slcolor}{HTML}{882B21}

\usepackage{enumerate}
\usepackage{enumitem}

\usepackage{nopageno}
\newcommand{\peem}{\textsc{p.m.}}
\newcommand{\ayem}{\textsc{a.m.}}
\usepackage{geometry}
\geometry{margin=1in,top=1.75in,bottom=0.4in}

\usepackage{tikz}
\usepackage{ulem}

\usepackage{hyperref}

\makeatletter
\renewcommand{\maketitle}{%
\begin{tikzpicture}[remember picture,overlay]
  \node[anchor=north east,xshift=-0.8in,yshift=-0.6in] at (current page.north east) {\includegraphics[width=1.0in]{logo.pdf}};

  \node[anchor=north west,xshift=1in,yshift=-0.9in] at (current page.north west) {\parbox{5in}{\underline{\huge\sffamily \raisebox{0.5ex}{\@title}} \\ \color{gray}\normalsize\sffamily Ross/Asia Mathematics Program \\
  \hspace*{2em}{{\texttt{ info@desteam.org}} \ $\cdot$ \  \texttt{ross@rossprogram.org}} }};
\end{tikzpicture}} 
\makeatother


\setlength{\parindent}{0in}
\setlength{\parskip}{1.5ex}

\newcommand{\dormname}{Dormitory}
\newcommand{\dormaddress}{ }
\newcommand{\orientationlocation}{ }
\newcommand{\checkinlocation}{ }
\newcommand{\totalfee}{35,000 RMB}

\usepackage{advdate}
\usepackage{datetime}
\newcommand{\startsunday}{\SetDate[07/07/2019]}
\newcommand{\finishfriday}{\SetDate[09/08/2019]}

\usepackage{calc}
\newcommand{\blank}[3]{\begin{Form}\raisebox{-2ex}{\color{gray}{\makebox[0in][l]{\footnotesize #2}}}\underline{\TextField[width=#1,name=#3]{}}\end{Form}}

\newcommand{\yesblanknoblank}[1]{\begin{Form}%
\ChoiceMenu[radio,name=#1]{}{Yes=Yes}%
\ChoiceMenu[radio,name=#1]{}{No=No}%
\end{Form}%
}

