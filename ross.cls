\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ross}[2017/05/02 Ross Class]
 
\LoadClass[12pt]{article}
\RequirePackage{xcolor}
\definecolor{slcolor}{HTML}{882B21}

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

  \node[anchor=north west,xshift=1in,yshift=-0.9in] at (current page.north west) {\parbox{5in}{\underline{\huge\sffamily \raisebox{0.5ex}{\@title}} \\ \color{gray}\normalsize\sffamily Ross Mathematics Program $\cdot$ {\texttt{ross@rossprogram.org}} $\cdot$ (773) 809--5659}};
\end{tikzpicture}}
\makeatother


\setlength{\parindent}{0in}
\setlength{\parskip}{1.5ex}

\newcommand{\dormname}{Lynam Hall}
\newcommand{\dormaddress}{1216 Sunbury Road, Columbus, OH 43219}
\newcommand{\orientationlocation}{Spangler Learning Center}
\newcommand{\checkinlocation}{Lynam Hall}
\newcommand{\totalfee}{\$5000}
\newcommand{\campus}{Ohio Dominican University}
\newcommand{\feeduedate}{June 10, \the\year}

\usepackage{advdate}
\usepackage{datetime}
\newdateformat{rossdate}{\THEDAY\ \monthname[\THEMONTH] \THEYEAR}
\newcommand{\startsunday}{\rossdate\SetDate[23/06/2019]}
\newcommand{\finishfriday}{\rossdate\SetDate[02/08/2019]}

\usepackage{calc}
\newcommand{\blank}[3]{\begin{Form}\raisebox{-2ex}{\color{gray}{\raisebox{0ex}[0ex][1ex]{\makebox[0in][l]{\makebox[#1][c]{\footnotesize #2}}}}}\underline{\TextField[width=#1,name=#3]{}}\end{Form}}

\newcommand{\yesblanknoblank}[1]{\begin{Form}%
\ChoiceMenu[radio,name=#1]{}{Yes=Yes}%
\ChoiceMenu[radio,name=#1]{}{No=No}%
\end{Form}%
}

