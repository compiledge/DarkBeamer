\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{darkbeamer}[2023/08/28 v0.1 Dark Beamer]

\RequirePackage{xcolor}				% Custom colors
\RequirePackage{outlines}			% Better lists

% Passing every unknown option to beamer class
\DeclareOption*{%
	\PassOptionsToClass{\CurrentOption}{beamer}%
}

% Beamer Themes
\newcommand{\mytheme}{default}

% Config custom beamer theme
\DeclareOption{AnnArbor}{\renewcommand{\mytheme}{AnnArbor}}
\DeclareOption{Antibes}{\renewcommand{\mytheme}{Antibes}}
\DeclareOption{Bergen}{\renewcommand{\mytheme}{Bergen}}
\DeclareOption{Berkeley}{\renewcommand{\mytheme}{Berkeley}}
\DeclareOption{Berlin}{\renewcommand{\mytheme}{Berlin}}
\DeclareOption{CambridgeUS}{\renewcommand{\mytheme}{CambridgeUS}}
\DeclareOption{Copenhagen}{\renewcommand{\mytheme}{Copenhagen}}
\DeclareOption{Darmstadt}{\renewcommand{\mytheme}{Darmstadt}}
\DeclareOption{Dresden}{\renewcommand{\mytheme}{Dresden}}
\DeclareOption{Frankfurt}{\renewcommand{\mytheme}{Frankfurt}}
\DeclareOption{Goettingen}{\renewcommand{\mytheme}{Goettingen}}
\DeclareOption{Hannover}{\renewcommand{\mytheme}{Hannover}}
\DeclareOption{Ilmenau}{\renewcommand{\mytheme}{Ilmenau}}
\DeclareOption{JuanLesPins}{\renewcommand{\mytheme}{JuanLesPins}}
\DeclareOption{Luebeck}{\renewcommand{\mytheme}{Luebeck}}
\DeclareOption{Madrid}{\renewcommand{\mytheme}{Madrid}}
\DeclareOption{Malmoe}{\renewcommand{\mytheme}{Malmoe}}
\DeclareOption{Marburg}{\renewcommand{\mytheme}{Marburg}}
\DeclareOption{Montpellier}{\renewcommand{\mytheme}{Montpellier}}
\DeclareOption{PaloAlto}{\renewcommand{\mytheme}{PaloAlto}}
\DeclareOption{Rochester}{\renewcommand{\mytheme}{Rochester}}
\DeclareOption{Singapore}{\renewcommand{\mytheme}{Singapore}}
\DeclareOption{Szeged}{\renewcommand{\mytheme}{Szeged}}
\DeclareOption{Warsaw}{\renewcommand{\mytheme}{Warsaw}}
\DeclareOption{boxes}{\renewcommand{\mytheme}{boxes}}
\DeclareOption{default}{\renewcommand{\mytheme}{default}}

% ----------------------------------------------
% 					Colorschemes
% ----------------------------------------------
% Standard color codes
% color 1: titles
% color 2: good
% color 3: warning
% color 4: bad
% color 5: emphasis
% color 6: url

% Defualt Colorscheme
\definecolor{background}{HTML}{f8f8f2} % #f8f8f2
\definecolor{foreground}{HTML}{282a36} % #282a36
\definecolor{comment}{HTML}{6272a4} 	% #6272a4
\definecolor{color1}{HTML}{bd93f9} 		% #bd93f9
\definecolor{color2}{HTML}{50fa7b} 		% #50fa7b
\definecolor{color3}{HTML}{ffb86c} 		% #ffb86c
\definecolor{color4}{HTML}{ff5555} 		% #ff5555
\definecolor{color5}{HTML}{ff79c6} 		% #ff79c6
\definecolor{color6}{HTML}{8be9fd} 		% #8be9fd
\definecolor{color7}{HTML}{f1fa8c} 		% #f1fa8c
\definecolor{color8}{HTML}{44475a} 		% #44475a
\definecolor{url}{HTML}{f1fa8c} 			% #f1fa8c
\definecolor{math}{HTML}{f1fa8c} 		% #f1fa8c

% Dracula colorscheme
\DeclareOption{dracula}{
	\definecolor{background}{HTML}{282a36} % #282a36
	\definecolor{foreground}{HTML}{f8f8f2} % #f8f8f2
	\definecolor{comment}{HTML}{6272a4} 	% #6272a4
	\definecolor{color1}{HTML}{bd93f9} 		% #bd93f9
	\definecolor{color2}{HTML}{50fa7b} 		% #50fa7b
	\definecolor{color3}{HTML}{ffb86c} 		% #ffb86c
	\definecolor{color4}{HTML}{ff5555} 		% #ff5555
	\definecolor{color5}{HTML}{ff79c6} 		% #ff79c6
	\definecolor{color6}{HTML}{8be9fd} 		% #8be9fd
	\definecolor{color7}{HTML}{44475a} 		% #44475a
	\definecolor{color8}{HTML}{f1fa8c} 		% #f1fa8c
	\definecolor{url}{HTML}{f1fa8c} 			% #f1fa8c
	\definecolor{math}{HTML}{f1fa8c} 		% #f1fa8c
}

% Gruvbox dark
% ref: https://github.com/morhetz/gruvbox
\DeclareOption{gruvbox-dark}{
	\definecolor{background}{HTML}{282828} % #282828
	\definecolor{foreground}{HTML}{ebdbb2} % #ebdbb2
	\definecolor{comment}{HTML}{928374} 	% #928374
	\definecolor{color1}{HTML}{b16286} 		% #b16286
	\definecolor{color2}{HTML}{98971a} 		% #98971a
	\definecolor{color3}{HTML}{d79921} 		% #d79921
	\definecolor{color4}{HTML}{cc241d} 		% #cc241d
	\definecolor{color5}{HTML}{689d6a} 		% #689d6a
	\definecolor{color6}{HTML}{458588} 		% #458588
	\definecolor{color7}{HTML}{a89984} 		% #a89984
	\definecolor{url}{HTML}{f1fa8c} 			% #f1fa8c
	\definecolor{math}{HTML}{f1fa8c} 		% #f1fa8c
}

% Gruvbox light
% ref: https://github.com/morhetz/gruvbox
\DeclareOption{gruvbox-light}{
	\definecolor{background}{HTML}{fbf1c7}	% #fbf1c7
	\definecolor{foreground}{HTML}{3c3836}	% #3c3836
	\definecolor{color1}{HTML}{b16286}		% #b16286
	\definecolor{color2}{HTML}{98971a}		% #98971a
	\definecolor{color3}{HTML}{d79921}		% #d79921
	\definecolor{color4}{HTML}{cc241d}		% #cc241d
	\definecolor{color6}{HTML}{689d6a}		% #689d6a
	\definecolor{url}{HTML}{458588}			% #458588
}

% TokyoNight Storm
\DeclareOption{tokyonight-storm}{
	\definecolor{background}{HTML}{24283b}	% #24283b
	\definecolor{foreground}{HTML}{c0caf5}	% #c0caf5
	\definecolor{color1}{HTML}{7aa2f7}		% #7aa2f7
	\definecolor{color2}{HTML}{9ece6a}		% #9ece6a
	\definecolor{color3}{HTML}{e0af68}		% #e0af68
	\definecolor{color4}{HTML}{f7768e}		% #f7768e
	\definecolor{color5}{HTML}{bb9af7}		% #bb9af7
	\definecolor{color6}{HTML}{7dcfff}		% #7dcfff
	\definecolor{color7}{HTML}{a9b1d6}		% #a9b1d6
	\definecolor{color8}{HTML}{ff9e64}		% #ff9e64
	\definecolor{url}{HTML}{73daca}			% #73daca
	\definecolor{math}{HTML}{db4b4b}			% #db4b4b
}

% TokyoNight Day
\DeclareOption{tokyonight-day}{
	\definecolor{background}{HTML}{e1e2e7}	% #e1e2e7
	\definecolor{foreground}{HTML}{3760bf}	% #3760bf
	\definecolor{color1}{HTML}{2e7de9}		% #2e7de9
	\definecolor{color2}{HTML}{587539}		% #587539
	\definecolor{color3}{HTML}{8c6c3e}		% #8c6c3e
	\definecolor{color4}{HTML}{f52a65}		% #f52a65
	\definecolor{color5}{HTML}{9854f1}		% #9854f1
	\definecolor{color6}{HTML}{007197}		% #007197
	\definecolor{color7}{HTML}{6172b0}		% #6172b0
	\definecolor{color8}{HTML}{387068}		% #387068
	\definecolor{url}{HTML}{b15c00}			% #b15c00
	\definecolor{math}{HTML}{c64343}			% #c64343
}

% Solarized Dark
\DeclareOption{solarized-dark}{
	\definecolor{background}{HTML}{073642}	% #073642
	\definecolor{foreground}{HTML}{eee8d5}	% #eee8d5
	\definecolor{color1}{HTML}{d33682}		% #d33682
	\definecolor{color2}{HTML}{859900}		% #859900
	\definecolor{color3}{HTML}{b58900}		% #b58900
	\definecolor{color4}{HTML}{dc322f}		% #dc322f
	\definecolor{color5}{HTML}{cb4b16}		% #cb4b16
	\definecolor{color6}{HTML}{6c71c4}		% #6c71c4
	\definecolor{url}{HTML}{268bd2}			% #268bd2
	\definecolor{math}{HTML}{2aa198}			% #2aa198
}

% Solarized Light
\DeclareOption{solarized-light}{
	\definecolor{background}{HTML}{eee8d5}	% #eee8d5
	\definecolor{foreground}{HTML}{073642}	% #073642
	\definecolor{color1}{HTML}{d33682}		% #d33682
	\definecolor{color2}{HTML}{859900}		% #859900
	\definecolor{color3}{HTML}{b58900}		% #b58900
	\definecolor{color4}{HTML}{dc322f}		% #dc322f
	\definecolor{color5}{HTML}{cb4b16}		% #cb4b16
	\definecolor{color6}{HTML}{6c71c4}		% #6c71c4
	\definecolor{url}{HTML}{268bd2}			% #268bd2
	\definecolor{math}{HTML}{2aa198}			% #2aa198
}

% Everforest Dark
% Ref: https://github.com/sainnhe/everforest
\DeclareOption{everforest-dark}{
	\definecolor{background}{HTML}{272e33}	% #272e33
	\definecolor{foreground}{HTML}{d3c6aa}	% #d3c6aa
	\definecolor{color1}{HTML}{dbbc7f}		% #dbbc7f
	\definecolor{color2}{HTML}{83c092}		% #83c092
	\definecolor{color3}{HTML}{e69875}		% #e69875
	\definecolor{color4}{HTML}{e67e80}		% #e67e80
	\definecolor{color5}{HTML}{d699b6}		% #d699b6
	\definecolor{url}{HTML}{7fbbb3}			% #7fbbb3
	\definecolor{math}{HTML}{a7c080}			% #a7c080
}

% Everforest Light
% Ref: https://github.com/sainnhe/everforest
\DeclareOption{everforest-light}{
	\definecolor{background}{HTML}{fffbef}	% #fffbef
	\definecolor{foreground}{HTML}{5c6a72}	% #5c6a72
	\definecolor{color1}{HTML}{dfa000}		% #dfa000
	\definecolor{color2}{HTML}{8da101}		% #8da101
	\definecolor{color3}{HTML}{f57d26}		% #f57d26
	\definecolor{color4}{HTML}{f85552}		% #f85552
	\definecolor{color5}{HTML}{3a94c5}		% #3a94c5
	\definecolor{url}{HTML}{35a77c}			% #35a77c
	\definecolor{math}{HTML}{df69ba}			% #df69ba
}

% ----------------------------------------------
% 					Loading opts and class
% ----------------------------------------------
\ProcessOptions\relax
\LoadClass{beamer}

% ----------------------------------------------
% 					Outer Packages
% ----------------------------------------------
\RequirePackage{listings}			% Code snippets
\RequirePackage{menukeys}			% Keyboard and filepaths
\RequirePackage{fontawesome}		% Awesome symbols
\RequirePackage{tcolorbox}			% Modern text blocks
\RequirePackage{tikzsymbols}		% Custom symbols on tex
\RequirePackage{circledsteps}		% Custom number symbols

% Defining theme
\usetheme{\mytheme}

% ----------------------------------------------
% 					Theme customization
% ----------------------------------------------
% Lists
\setbeamertemplate{itemize items}{$\color{foreground}\bullet$}
\setbeamertemplate{enumerate items}[square]
\setbeamertemplate{sections/subsections in toc}[square]

% Remove shadow and borders on title page
\setbeamertemplate{title page}[default]

% Suppress the navigation symbols
\beamertemplatenavigationsymbolsempty

% ----------------------------------------------
% 					Color Theme customization
% ----------------------------------------------

% Text
\setbeamercolor{normal text}{fg=foreground}
\setbeamercolor{background canvas}{bg=background}
\setbeamercolor{alerted text}{fg=color5}
\setbeamercolor{frametitle}{fg=foreground}

% Titles
\setbeamercolor{titlelike}{fg=color1, bg=background}
\setbeamercolor{title}{fg=color1, bg=background!95}

% Structure
\setbeamercolor{structure}{fg=background!95}

% Lists
\setbeamercolor{item projected}{fg=background, bg=foreground}

% Palletes
\setbeamercolor{palette sidebar primary}{use=normal text,fg=normal text.fg}
\setbeamercolor{palette sidebar quaternary}{use=structure,fg=structure.fg}
\setbeamercolor{palette sidebar secondary}{use=structure,fg=structure.fg}
\setbeamercolor{palette sidebar tertiary}{use=normal text,fg=normal text.fg}
%
% Sections
\setbeamercolor{section in head/foot}{bg=background, fg=foreground}
\setbeamercolor{section in toc}{fg=foreground}
\setbeamercolor{subsection in toc}{fg=foreground}

\setbeamercolor{section in sidebar}{fg=brown}
\setbeamercolor{section in sidebar shaded}{fg=grey}

% Sidebar
% \setbeamercolor{sidebar}{bg=red}
% \setbeamercolor{sidebar}{parent=palette primary}
% \setbeamercolor{subsection in sidebar}{fg=brown}
% \setbeamercolor{subsection in sidebar shaded}{fg=grey}
% \setbeamercolor{fine separation line}{}
% \setbeamercolor{separation line}{}

% ----------------------------------------------
% 					Code Snippets
% ----------------------------------------------
\lstdefinestyle{mystyle}{
	backgroundcolor=\color{background},
	commentstyle=\color{comment},
	keywordstyle=\color{color2},
	numberstyle=\tiny\color{comment},
	stringstyle=\color{color3},
	basicstyle=\ttfamily\small,
	breakatwhitespace=false,
	breaklines=true,
	captionpos=b,
	keepspaces=true,
	numbers=left,
	numbersep=5pt,
	showspaces=false,
	showstringspaces=false,
	showtabs=false,
	tabsize=2,
	frame=single,
	title=\lstname,
	escapeinside={(*@}{@*)},
	frameround = tttt
}
\lstset{style=mystyle}

% No Starch Press Style
% Custom symbols for lstlisting environment
% Ref: https://zuttobenkyou.wordpress.com/tag/lstlisting/
\newcommand{\lnnum}[1]
{\ifthenelse{#1 =  1}{\Circled{1}}
{\ifthenelse{#1 =  2}{\Circled{2}}
{\ifthenelse{#1 =  3}{\Circled{3}}
{\ifthenelse{#1 =  4}{\Circled{4}}
{\ifthenelse{#1 =  5}{\Circled{5}}
{\ifthenelse{#1 =  6}{\Circled{6}}
{\ifthenelse{#1 =  7}{\Circled{7}}
{\ifthenelse{#1 =  8}{\Circled{8}}
{\ifthenelse{#1 =  9}{\Circled{9}}
{\ifthenelse{#1 =  10}{\Circled{10}}
}}}}}}}}}}

% ----------------------------------------------
% 					Menu Keys config
% ----------------------------------------------
\newmenucolortheme{menucolors}{named}{background}{foreground}{foreground}

\changemenucolortheme{roundedmenus}{menucolors}
\changemenucolortheme{roundedkeys}{menucolors}
\changemenucolortheme{pathswithblackfolder}{menucolors}

\renewmenumacro{\menu}[>]{roundedmenus}
\renewmenumacro{\keys}[+]{roundedkeys}
\renewmenumacro{\directory}[/]{pathswithblackfolder}

% ----------------------------------------------
% 					Custom symbols
% ----------------------------------------------
\newcommand{\gd}{\color{color2} \Smiley}
\newcommand{\bd}{\color{color4} \Sadey}

% ----------------------------------------------
% 					Beamer Blocks 
% ----------------------------------------------
% Colors blocks
\setbeamercolor{block body}{fg=foreground,bg=background!85}
\setbeamercolor{block title}{fg=foreground,bg=background!95}

\setbeamercolor{block body alerted}{fg=background,bg=color4!95}
\setbeamercolor{block title alerted}{fg=background,bg=color4}

\setbeamercolor{block body example}{fg=background,bg=color3!95}
\setbeamercolor{block title example}{fg=background,bg=color3}

\setbeamercolor{block body example}{fg=background,bg=color3!95}
\setbeamercolor{block title example}{fg=background,bg=color3}

% Color theorem blocks
\setbeamercolor{block theorem}{fg=background,bg=color5}

% Style
\setbeamertemplate{blocks}[rounded][shadow=false]

% ----------------------------------------------
% 					Tcolorbox Blocks
% ----------------------------------------------
\newtcolorbox{tbox}[1]{		% Text box
	colframe=foreground,
	coltitle=foreground,
	colbacktitle=background,
	colback=background,
	coltext=foreground,
	title=\faThumbTack \hspace{0.15cm} #1
}
\newtcolorbox{gbox}[1]{		% Good box
	colframe=color2,
	coltitle=color2,
	colbacktitle=background,
	colback=background,
	coltext=foreground,
	title=\faCheck \hspace{0.15cm} #1
}
\newtcolorbox{wbox}[1]{		% Warning box
	colframe=color3,
	coltitle=color3,
	colbacktitle=background,
	colback=background,
	coltext=foreground,
	title=\faWarning \hspace{0.15cm} #1
}
\newtcolorbox{bbox}[1]{		% Bad box
	colframe=color4,
	coltitle=color4,
	colbacktitle=background,
	colback=background,
	coltext=foreground,
	title=\faClose \hspace{0.15cm} #1
}
\newtcolorbox{lbox}[1]{		% Link box
	colframe=color6,
	coltitle=color6,
	colbacktitle=background,
	colback=background,
	coltext=foreground,
	title= \faPaperPlaneO \hspace{0.15cm} #1
}
\newtcolorbox{cbox}[1]{		% Code box
	colframe=foreground,
	coltitle=foreground,
	colbacktitle=background,
	colback=background,
	coltext=foreground,
	title= \faCode \hspace{0.15cm} #1
}
\newtcolorbox{githbox}[1]{	% Github box
	colframe=foreground,
	coltitle=foreground,
	colbacktitle=background,
	colback=background,
	coltext=foreground,
	title= \faGithubAlt \hspace{0.15cm} #1
}
\newtcolorbox{forkbox}[1]{	% Fork box
	colframe=foreground,
	coltitle=foreground,
	colbacktitle=background,
	colback=background,
	coltext=foreground,
	title= \faCodeFork \hspace{0.15cm} #1
}
\newtcolorbox{gitlbox}[1]{	% Gitlab box
	colframe=foreground,
	coltitle=foreground,
	colbacktitle=background,
	colback=background,
	coltext=foreground,
	title= \faGitlab \hspace{0.15cm} #1
}

% ----------------------------------------------
% 					Hyperlynks & Buttons
% ----------------------------------------------
\hypersetup{
    colorlinks=true,
    linkcolor=foreground,
	 filecolor=url,
    urlcolor=url,
}
