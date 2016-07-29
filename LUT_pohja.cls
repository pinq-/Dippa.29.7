%
% Don't Panic


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{LUT_pohja}[2016/03/09 LUT Dippa Pohja]

%matriisia varten
\usepackage{amsmath}
%Symboleita varten
\usepackage{upgreek}

\LoadClass[12pt,a4paper]{article}
%\usepackage[finnish]{babel}%tämä tavuttaa sanoja. Jos haluat pois, niin poista käytöstä. 

%fontit ja utf8
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{newtxtext,newtxmath} %fontti tyyli
\usepackage[none]{hyphenat}
\usepackage{amsmath,bm} %matemaattiset symbolit

%kuvakirjastot
\RequirePackage[headheight=15pt]{geometry}
\usepackage{graphicx}
\DeclareGraphicsExtensions{.pdf,.jpg,.png}
\graphicspath{{Kuvat/}}
\renewcommand{\figurename}{\textbf{Kuva}}
\renewcommand{\tablename}{\textit{Taulukko}}
\usepackage[justification=raggedright,singlelinecheck=off, labelsep=period]{caption}
\captionsetup[figure]{labelfont=bf}
\captionsetup[table]{labelfont=it,textfont=it}
\usepackage{float}

%taulukko
\usepackage{multirow}
%Isojen taulukkojen automaattinen katkaisu
\usepackage{longtable}
\setlength{\LTpre}{2.5em}

%Luettelot
\usepackage[shortlabels]{enumitem}
\setlist[itemize]{noitemsep, nolistsep,topsep=-1em}

%linkit
\usepackage{url}
\urlstyle{same}

% A4 dimensions for the thesis.Jossain paikoissa vasen marginaali on 30 jossain 35.
\geometry{a4paper,tmargin=35mm,bmargin=20mm,lmargin=30mm,rmargin=20mm}

%Jos haluut rivin välin heti alusta olevan 1.5. Kansi muuttuu.
\usepackage{setspace}
\captionsetup[table]{font={stretch=1.5}}     
\captionsetup[figure]{font={stretch=1.5}}
\setlength{\belowcaptionskip}{-1em}
 \linespread{1.5}
 


%sisällysluettelon linkitys
\usepackage[hidelinks]{hyperref}
\usepackage{tocloft}
\renewcommand{\cftsecleader}{\bfseries\cftdotfill{\cftdotsep}}

%lähdeviitepaketti
\usepackage[round]{natbib} %http://merkel.zoneo.net/Latex/natbib.php
\renewcommand\@biblabel[1]{}
\setlength{\bibhang}{0em}

%Otsikoiden uudelleen määrittely
\usepackage{titlesec}

\setcounter{secnumdepth}{4}%neljä alaotsikkotaskua
\setcounter{tocdepth}{4}%neljä alaotsikkotaskua

\titleformat{\paragraph}
{\normalfont\normalsize}{\theparagraph}{1em}{}
\titlespacing*{\paragraph}{0pt}{0em plus 4pt minus 2pt}{-1em plus 2pt minus 2pt}

\setlength{\parskip}{1em}
\titleformat*{\section}{\normalsize\bfseries}
\titleformat*{\subsection}{\normalsize}
\titleformat*{\subsubsection}{\normalsize}

%otsikoiden välit ennen ja jälkeen. niistä miinustetaan riviväli, mikä tulee automaattisesti mukaan
%\titlespacing\section{0pt}{12pt plus 4pt minus 2pt}{24pt plus 2pt minus 2pt}
\newlength{\aftersection}
\setlength{\aftersection}{2em}
\addtolength{\aftersection}{-1\parskip}

\newlength{\beforesection}
\setlength{\beforesection}{0em}
\addtolength{\beforesection}{-1\parskip}

\titlespacing*{\section}{0pt}{\beforesection}{\aftersection}
%\titlespacing{\subsection}{0pt}{12pt plus 2pt minus 2pt}{0pt plus 2pt minus 2pt}

\newlength{\aftersubsection}
\setlength{\aftersubsection}{0em}
\addtolength{\aftersubsection}{-1\parskip}

\newlength{\beforesubsection}
\setlength{\beforesubsection}{1em}
\addtolength{\beforesubsection}{-1\parskip}

\titlespacing*{\subsection}{0pt}{\beforesubsection}{\aftersubsection}

%\titlespacing\subsubsection{0pt}{12pt plus 2pt minus 2pt}{0pt plus 2pt minus 2pt}
\newlength{\aftersubsubsection}
\setlength{\aftersubsubsection}{0em}
\addtolength{\aftersubsubsection}{-1\parskip}

\newlength{\beforesubsubsection}
\setlength{\beforesubsubsection}{1em}
\addtolength{\beforesubsubsection}{-1\parskip}

\titlespacing*{\subsubsection}{0pt}{\beforesubsubsection}{\aftersubsubsection}

%sivujen ja kuvien määrän laskenta
\usepackage{lastpage}
\usepackage{totcount}
\regtotcounter{figure}
\regtotcounter{table}
\newtotcounter{pageLast}
\newtotcounter{totalsections}

%pisteet pois sisällys luettelosta liitteille
\renewcommand{\cftsecdotsep}{\cftdotsep}



%tab komento
\newcommand{\itab}[1]{\hspace{0em}\rlap{#1}}
\newcommand{\tab}[1]{\hspace{.2\textwidth}\rlap{#1}}

%liitetideostojen hallinta
\usepackage[titletoc,title]{appendix}
\usepackage{chngcntr}

\renewcommand{\appendixname}{LIITE}


\newcommand*{\schoolfin}{}\newcommand*{\schoolen}{}
\newcommand*{\school}[2]{
 \renewcommand*{\schoolfin}{#1}%
 \renewcommand*{\schoolen}{#2}%
}

\newcommand*{\faculty}{}% variable
\newcommand*{\facultyen}[1]{\renewcommand{\faculty}{#1}}

\newcommand*{\Year}{}% variable
\newcommand*{\Thesisyear}[1]{\renewcommand{\Year}{#1}}% 

\newcommand*{\Departmentfin}{}\newcommand*{\Departmenten}{}
\newcommand*{\Department}[2]{
 \renewcommand*{\Departmentfin}{#1}%
 \renewcommand*{\Departmenten}{#2}%
}

\newcommand*{\ThesisTitlefin}{}\newcommand*{\ThesisTitleen}{}
\newcommand*{\ThesisTitle}[2]{
 \renewcommand*{\ThesisTitlefin}{#1}%
 \renewcommand*{\ThesisTitleen}{#2}%
}

\newcommand*{\Tarkastajafirst}{}\newcommand*{\Tarkastajasecond}{}
\newcommand*{\Tarkastajat}[2]{
 \renewcommand*{\Tarkastajafirst}{#1}%
 \renewcommand*{\Tarkastajasecond}{#2}%
}

\newcommand*{\Examinerfirst}{}\newcommand*{\Examinersecond}{}
\newcommand*{\Examiners}[2]{
 \renewcommand*{\Examinerfirst}{#1}%
 \renewcommand*{\Examinersecond}{#2}%
}

\newcommand*{\Doctypefin}{}\newcommand*{\Doctypeen}{}
\newcommand*{\Doctype}[2]{
 \renewcommand*{\Doctypefin}{#1}%
 \renewcommand*{\Doctypeen}{#2}%
}

\newcommand*{\Keywordsfin}{}\newcommand*{\Keywordsen}{}
\newcommand*{\Keywords}[2]{
 \renewcommand*{\Keywordsfin}{#1}%
 \renewcommand*{\Keywordsen}{#2}%
}

\newcommand*{\DateYear}{}\newcommand*{\DateDaMo}{}
\newcommand*{\ThesisDate}[2]{
 \renewcommand*{\DateYear}{#1}%
 \renewcommand*{\DateDaMo}{#2}%
 
}%Ottaa sivujen, kuvien ja taulukkojen määrän talteen ennen liitteitä
\newcounter{Tempfigures}
\newcounter{Temptable}
\newcounter{Temppage}


%Luo etusivun
\newcommand\makecover{%
  \setlength\parindent{0pt}%
  \setlength\parskip{0pt}%
  \setlength{\parskip}{0.5px}
  \pagestyle{empty}
  \MakeUppercase\schoolfin\par %tekstinä lutti
  %\includegraphics[width=0.4\textwidth]{LUT_logo}\\ %kuvana lutti logo. Tämä ei ole virallinen ulkoasu, mutta miksi ei? kerran sellanen on luotu niin miksi ei käyttää sitä?  Jos käytät tätä, muuta samalla ennen tarkastajia olevaa väliä pienemmäksi.
  \faculty\par
  \Departmentfin
  
  \vspace{65mm}
  
  \textit{\@author}
  
  \vspace{5mm}
  
  {\bfseries\MakeUppercase{\ThesisTitlefin}}
  
  \vspace{110mm} 
  %\vspace{95mm}% jos käytät LUTin logoa
  
 Työn tarkastaja(t): \qquad\Tarkastajafirst.\\
 \hphantom{Työn tarkastaja(t): \qquad}\Tarkastajasecond.

}

%Luo tiivistelmän
\newenvironment{tiivis}{%
    \setlength{\parskip}{1.45em}
    \clearpage\thispagestyle{empty}%
    %tiivistelmä rivivälillä 1
    \singlespace
    \section*{\MakeUppercase{Tiivistelmä}}
    \schoolfin\\
    \faculty\\
    \Departmentfin\par
    \@author\par
     {\bfseries\ThesisTitlefin}\par
     \Doctypefin\par
     \DateYear\par
     \total{pageLast} sivua, \total{figure} kuvaa, \total{table} taulukkoa ja \total{totalsections} liitettä\par
    Tarkastajat: \qquad\Tarkastajafirst.\\
    \hphantom{Tarkastajat: \qquad}\Tarkastajasecond.\par
    Hakusanat: \Keywordsfin\par
    \noindent
}{}
%Sama lontooks
\newenvironment{Abstract}{%
    \setlength{\parskip}{1.45em}
    \clearpage\thispagestyle{empty}%
    \singlespace
    \section*{\MakeUppercase{Abstract}}
    \schoolen\\
    \faculty\\
    \Departmenten\par
    \@author\par
     {\bfseries\ThesisTitleen}\par
     \Doctypeen\par
     \DateYear\par
     \total{pageLast} pages, \total{figure} figures, \total{table} tables ja \total{totalsections}  appendices\par
    Examiners: \qquad\Examinerfirst.\\
    \hphantom{Tarkastajat: \qquad}\Examinersecond.\par
    Keywords: \Keywordsen\par
    \noindent
}{}
%Kiitospuheet
\newenvironment{preface}{%
  \clearpage\thispagestyle{empty}%
  \setlength{\parskip}{3ex}
  \section*{\MakeUppercase{alkusanat}}
}{%
  \par\vspace*{13mm}
  \@author\\
  Lappeenrannassa  \DateDaMo.\DateYear
}
%Sivunumerointi
\usepackage{fancyhdr}

\newcommand\ps@Mainstyle{%
   % \usepackage{fancyhdr} % Custom headers and footers
    \pagestyle{fancyplain} % Makes all pages in the document conform to the custom headers and footers
    \fancyhead[L]{}% Empty left header
    \fancyhead[C]{\thepage} % Page numbering for center header  
    \fancyhead[R]{}% Empty right header
    \fancyfoot[L]{}% Empty left footer
    \fancyfoot[C]{}% Empty center footer
    \fancyfoot[R]{}% Empty left footer
    \renewcommand{\headrulewidth}{0pt}
\setlength{\parskip}{1em}
}
%Ennen sisällyslutteloa oleva luettelo
\newenvironment{luettelo}{%
    \setlength{\parskip}{0.2em}
    \section*{SISÄLLYSLUETTELO}\par
    \bfseries
}{}

%\kuva{Koko}{Tiedoston nimi}{Teksti}{viite nimi}
\newcommand\kuva[4]{
\begin{figure}[H]
  \vspace{1em}
  \centering
  \includegraphics[width=#1\textwidth]{#2}
  \caption{#3}
  \label{fig:#4}
\end{figure}
}
%tallettaa kuvien, taulukkojen ja sivujen määrän ennen liitteitä. Lisää tämä osio dipan loppuun, ennen liitteitä.
\newcommand\TempTalteen{
\setcounter{Tempfigures}{\value{figure}}
\setcounter{Temptable}{\value{table}}
\setcounter{pageLast}{\number\value{page}}
 }
 %Asettaa oikeat arvot 
 \newcommand\Talteen{
\setcounter{figure}{\value{Tempfigures}}
\setcounter{table}{\value{Temptable}}
\setcounter{totalsections}{\value{section}}

 }



%liitetiedosto ympäristö
\newcommand\ps@appendix{%
	\pagestyle{fancyplain} 
    \fancyhead[L]{}% Empty left header
    \fancyhead[C]{} % Page numbering for center heade
    \fancyhead[R]{Liite \thesection, \thepage}
     %\fancyhead[R]{Liite \thepage}
    \fancyfoot[L]{}% Empty left footer
    \fancyfoot[C]{}% Empty center footer
    \fancyfoot[R]{}% Empty left footer
}
 \renewcommand\appendix{%
   \clearpage%
   \pagestyle{appendix}%
   %\renewcommand{\cftdot}{}
	\renewcommand{\thesection}{\Roman{section}}
	\counterwithin{figure}{section}% Reset the figure counter
	\counterwithin{table}{section} % Reset the table counter
	\counterwithin*{page}{section} % Reset the page counter with each appendix section 
    \addtocontents{toc}{\cftpagenumbersoff{section}}
     \addtocontents{toc}{\protect\contentsline{section}{LIITTEET}{}{}}%
	\addtocontents{toc}{\protect\renewcommand{\protect\cftsecindent}{60pt}}
    \addtocontents{toc}{\protect\renewcommand\cftsecfont{\normalfont}}

 }




