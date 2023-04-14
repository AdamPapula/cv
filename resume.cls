\LoadClass[14pt]{extreport}
\usepackage{ifthen}
\usepackage[a-2u]{pdfx}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{lmodern}
\usepackage{geometry}
\usepackage{array}
\usepackage{enumitem}
\usepackage{xltabular}
\usepackage{graphicx}
\usepackage{outlines}
\usepackage{fontawesome5}
\usepackage{ulem}
\renewcommand{\ULdepth}{5pt}
\renewcommand\ULthickness{.8pt}

\newcounter{stars}

\hypersetup{
    hidelinks
}

\newenvironment{mycenter}[1][\topsep]
  {\setlength{\topsep}{#1}\par\kern\topsep\centering}% \begin{mycenter}[<len>]
  {\par\kern\topsep}% \end{mycenter}




\setlist[itemize]{leftmargin=*}
\linespread{1.15}
\geometry{a4paper,
    left={1.5cm},
    top={1.5cm},
    right={1.5cm},
    bottom={1.5cm}
}
\newcommand\clink[1]{{\usefont{T1}{lmtt}{m}{n} #1 }}
\pagenumbering{gobble}
\newenvironment{sekce}[2]{
    \vspace{0.15cm}
    \normalsize{\noindent\uline{\textbf{#1}\hfill}}
    \vspace{0.15cm}
    %\hrule
    \small{#2}
}{}
\newenvironment{skola}[3]{
    {
        \textbf{#1} \leavevmode\newline
        {\footnotesize
          \ifthenelse{\equal{#3}{}}{}{{\textit{#3} \leavevmode, }}
          \ifthenelse{\equal{#2}{}}{}{{#2 \leavevmode}}
        }
    }
}{}

\newenvironment{prace}[2]{
  {
    \textbf{#1} \leavevmode\newline
    {\footnotesize
      #2
    }
  }
}{}
\newenvironment{projekt}[3]{
    {
        \textbf{#1} \leavevmode\newline
        {\footnotesize
          \ifthenelse{\equal{#2}{}}{}{{#2 \leavevmode\newline}}
          \ifthenelse{\equal{#3}{}}{}{{\textit{#3} \leavevmode}}
        }
    }
}{}
\newenvironment{znalost}[3]{
    {
        \setcounter{stars}{0}
        \textbf{#1} \quad \whiledo {\value{stars} < #2}{\raisebox{1pt}{\scriptsize{\faIcon[regular]{star}}}\stepcounter{stars}}\ifthenelse{\equal{#3}{}}{}{\raisebox{1pt}{\scriptsize{\faIcon[regular]{star-half}}}}
    }
}{}
