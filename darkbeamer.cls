\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{darkbeamer}[2023/08/28 v0.1 Dark Beamer]

\RequirePackage{xcolor}				% Custom colors
\RequirePackage{outlines}			% Better lists
\RequirePackage{ifthen}				% if/then/else

% Passing every unknown option to beamer class
\DeclareOption*{%
	\PassOptionsToClass{\CurrentOption}{beamer}%
}

% Beamer Themes
\newcommand{\mytheme}{default}
\newcommand{\mylang}{en-us}

% Language options
\newif\if@langPtBr
\newif\if@langUsEn

\DeclareOption{lang=en-us}{
	\@langUsEntrue
	\@langPtBrfalse
}

\DeclareOption{lang=pt-br}{
	\@langPtBrtrue
	\@langUsEnfalse
}

% \DeclareOption{lang=en-us}{\renewcommand{\mylang}{en-us}}
% \DeclareOption{lang=pt-br}{\renewcommand{\mylang}{pt-br}}

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
% color 6: ...

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

% TokyoNight Moon
\DeclareOption{tokyonight-moon}{
	\definecolor{background}{HTML}{222436}	% #222436
	\definecolor{foreground}{HTML}{c8d3f5}	% #c8d3f5
	\definecolor{comment}{HTML}{565f89} 	% #565f89
	\definecolor{color1}{HTML}{bb9af7} 		% #bb9af7
	\definecolor{color2}{HTML}{9ece6a}		% #9ece6a
	\definecolor{color3}{HTML}{ff9e64}		% #ff9e64
	\definecolor{color4}{HTML}{f7768e}		% #f7768e
	\definecolor{color5}{HTML}{b4f9f8}		% #b4f9f8
	\definecolor{color6}{HTML}{2ac3de}		% #2ac3de
	\definecolor{color7}{HTML}{7dcfff}		% #7dcfff
	\definecolor{color8}{HTML}{7aa2f7}		% #7aa2f7
	\definecolor{color9}{HTML}{c0caf5} 		% #c0caf5
	\definecolor{color10}{HTML}{9aa5ce} 	% #9aa5ce
	\definecolor{color11}{HTML}{cfc9c2} 	% #cfc9c2
	\definecolor{color12}{HTML}{565f89} 	% #565f89
	\definecolor{color13}{HTML}{414868} 	% #414868
	\definecolor{color14}{HTML}{24283b} 	% #24283b
	\definecolor{url}{HTML}{73daca} 			% #73daca
	\definecolor{math}{HTML}{e0af68}			% #e0af68
}

% TokyoNight Storm
\DeclareOption{tokyonight-storm}{
	\definecolor{background}{HTML}{24283b}	% #222436
	\definecolor{foreground}{HTML}{a9b1d6}	% #a9b1d6
	\definecolor{comment}{HTML}{565f89} 	% #565f89
	\definecolor{color1}{HTML}{bb9af7} 		% #bb9af7
	\definecolor{color2}{HTML}{9ece6a}		% #9ece6a
	\definecolor{color3}{HTML}{ff9e64}		% #ff9e64
	\definecolor{color4}{HTML}{f7768e}		% #f7768e
	\definecolor{color5}{HTML}{b4f9f8}		% #b4f9f8
	\definecolor{color6}{HTML}{2ac3de}		% #2ac3de
	\definecolor{color7}{HTML}{7dcfff}		% #7dcfff
	\definecolor{color8}{HTML}{7aa2f7}		% #7aa2f7
	\definecolor{color9}{HTML}{c0caf5} 		% #c0caf5
	\definecolor{color10}{HTML}{9aa5ce} 	% #9aa5ce
	\definecolor{color11}{HTML}{cfc9c2} 	% #cfc9c2
	\definecolor{color12}{HTML}{565f89} 	% #565f89
	\definecolor{color13}{HTML}{414868} 	% #414868
	\definecolor{color14}{HTML}{24283b} 	% #24283b
	\definecolor{url}{HTML}{73daca} 			% #73daca
	\definecolor{math}{HTML}{e0af68}			% #e0af68
}

% TokyoNight Night
\DeclareOption{tokyonight-night}{
	\definecolor{background}{HTML}{1a1b26}	% #1a1b26 
	\definecolor{foreground}{HTML}{a9b1d6}	% #a9b1d6
	\definecolor{comment}{HTML}{565f89} 	% #565f89
	\definecolor{color1}{HTML}{bb9af7} 		% #bb9af7
	\definecolor{color2}{HTML}{9ece6a}		% #9ece6a
	\definecolor{color3}{HTML}{ff9e64}		% #ff9e64
	\definecolor{color4}{HTML}{f7768e}		% #f7768e
	\definecolor{color5}{HTML}{b4f9f8}		% #b4f9f8
	\definecolor{color6}{HTML}{2ac3de}		% #2ac3de
	\definecolor{color7}{HTML}{7dcfff}		% #7dcfff
	\definecolor{color8}{HTML}{7aa2f7}		% #7aa2f7
	\definecolor{color9}{HTML}{c0caf5}		% #c0caf5
	\definecolor{color10}{HTML}{9aa5ce} 	% #9aa5ce
	\definecolor{color11}{HTML}{cfc9c2} 	% #cfc9c2
	\definecolor{color12}{HTML}{565f89} 	% #565f89
	\definecolor{color13}{HTML}{414868} 	% #414868
	\definecolor{color14}{HTML}{24283b} 	% #24283b
	\definecolor{url}{HTML}{73daca} 			% #73daca
	\definecolor{math}{HTML}{e0af68}			% #e0af68
}


% TokyoNight Light
\DeclareOption{tokyonight-light}{
	\definecolor{background}{HTML}{d5d6db}		% #d5d6db
	\definecolor{foreground}{HTML}{343b58}		% #343b58
	\definecolor{comment}{HTML}{9699a3}			% #9699a3
	\definecolor{color1}{HTML}{5a4a78}			% #5a4a78
	\definecolor{color2}{HTML}{485e30}			% #485e30
	\definecolor{color3}{HTML}{8f5e15}			% #8f5e15
	\definecolor{color4}{HTML}{8c4351}			% #8c4351
	\definecolor{color5}{HTML}{166775}			% #166775
	\definecolor{color6}{HTML}{0f4b6e}			% #0f4b6e
	\definecolor{color7}{HTML}{34548a}			% #34548a
	\definecolor{color8}{HTML}{565a6e}			% #565a6e
	\definecolor{color9}{HTML}{634f30}			% #634f30
	\definecolor{color10}{HTML}{0f0f14}			% #0f0f14
	\definecolor{url}{HTML}{33635c}				% #33635c
	\definecolor{math}{HTML}{965027}				% #965027
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

% FlatColors Light
% Ref: https://flatuicolors.com/palette/defo
\DeclareOption{flatcolors-light}{
	\definecolor{background}{HTML}{ecf0f1}	% #ecf0f1
	\definecolor{foreground}{HTML}{2c3e50}	% #2c3e50
	\definecolor{color1}{HTML}{2ecc71}		% #2ecc71
	\definecolor{color2}{HTML}{27ae60}		% #27ae60
	\definecolor{color3}{HTML}{f39c12}		% #f39c12
	\definecolor{color4}{HTML}{e74c3c}		% #e74c3c
	\definecolor{color5}{HTML}{9b59b6}		% #9b59b6
	\definecolor{url}{HTML}{2980b9}			% #2980b9
	\definecolor{math}{HTML}{16a085}			% #16a085
}

% FlatColors Dark
% Ref: https://flatuicolors.com/palette/defo
\DeclareOption{flatcolors-dark}{
	\definecolor{background}{HTML}{2c3e50}	% #2c3e50
	\definecolor{foreground}{HTML}{ecf0f1}	% #ecf0f1
	\definecolor{color1}{HTML}{2ecc71}		% #2ecc71
	\definecolor{color2}{HTML}{27ae60}		% #2ecc71
	\definecolor{color3}{HTML}{f39c12}		% #f39c12
	\definecolor{color4}{HTML}{e74c3c}		% #e74c3c
	\definecolor{color5}{HTML}{9b59b6}		% #9b59b6
	\definecolor{url}{HTML}{2980b9}			% #2980b9
	\definecolor{math}{HTML}{16a085}			% #16a085
}

% RosePine
% Ref: https://rosepinetheme.com/palette/ingredients/
\DeclareOption{rosepine}{
	\definecolor{background}{HTML}{191724}	% #191724
	\definecolor{foreground}{HTML}{e0def4}	% #e0def4
	\definecolor{color1}{HTML}{ebbcba}		% #ebbcba
	\definecolor{color2}{HTML}{9ccfd8}		% #9ccfd8
	\definecolor{color3}{HTML}{f6c177}		% #f6c177
	\definecolor{color4}{HTML}{eb6f92}		% #eb6f92
	\definecolor{color5}{HTML}{c4a7e7}		% #c4a7e7
	\definecolor{url}{HTML}{31748f}			% #31748f
	\definecolor{math}{HTML}{c4a7e7}			% #c4a7e7
}

% RosePine-Moon
% Ref: https://rosepinetheme.com/palette/ingredients/
\DeclareOption{rosepine-moon}{
	\definecolor{background}{HTML}{232136}	% #232136
	\definecolor{foreground}{HTML}{e0def4}	% #e0def4
	\definecolor{color1}{HTML}{ea9a97}		% #ea9a97
	\definecolor{color2}{HTML}{9ccfd8}		% #9ccfd8
	\definecolor{color3}{HTML}{f6c177}		% #f6c177
	\definecolor{color4}{HTML}{eb6f92}		% #eb6f92
	\definecolor{color5}{HTML}{c4a7e7}		% #c4a7e7
	\definecolor{url}{HTML}{3e8fb0}			% #3e8fb0
	\definecolor{math}{HTML}{c4a7e7}			% #c4a7e7
}

% RosePine-Light
% Ref: https://rosepinetheme.com/palette/ingredients/
\DeclareOption{rosepine-dawn}{
	\definecolor{background}{HTML}{faf4ed}	% #faf4ed
	\definecolor{foreground}{HTML}{575279}	% #575279
	\definecolor{color1}{HTML}{d7827e}		% #d7827e
	\definecolor{color2}{HTML}{56949f}		% #56949f
	\definecolor{color3}{HTML}{ea9d34}		% #ea9d34
	\definecolor{color4}{HTML}{b4637a}		% #b4637a
	\definecolor{color5}{HTML}{907aa9}		% #907aa9
	\definecolor{url}{HTML}{286983}			% #286983
	\definecolor{math}{HTML}{907aa9}			% #907aa9
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
% 					Language customization
% ----------------------------------------------
% Brazilian Portuguese
\if@langPtBr
\uselanguage{portuguese}
\languagepath{portuguese}
\renewcommand{\lstlistingname}{Algoritmo}
\renewcommand{\lstlistlistingname}{Lista de Algoritmos}
\renewcommand{\figurename}{Figura}
\renewcommand{\tablename}{Tabela}
\deftranslation[to=portuguese]{theorem}{teorema}
\deftranslation[to=portuguese]{Theorem}{Teorema}
\deftranslation[to=portuguese]{corollary}{corolário}
\deftranslation[to=portuguese]{Corollary}{Corolário}
\deftranslation[to=portuguese]{definition}{definição}
\deftranslation[to=portuguese]{Definition}{Definição}
\deftranslation[to=portuguese]{definitions}{definições}
\deftranslation[to=portuguese]{Definitions}{Definições}
\deftranslation[to=portuguese]{fact}{fato}
\deftranslation[to=portuguese]{Fact}{Fato}
\deftranslation[to=portuguese]{problem}{problema}
\deftranslation[to=portuguese]{Problem}{Problema}
\deftranslation[to=portuguese]{lemma}{Lema}
\deftranslation[to=portuguese]{Lemma}{Lema}
\deftranslation[to=portuguese]{example}{exemplo}
\deftranslation[to=portuguese]{Example}{Exemplo}
\deftranslation[to=portuguese]{examples}{exemplos}
\deftranslation[to=portuguese]{Examples}{Exemplos}
\fi

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

% ----------------------------------------------
% 					Notes
% ----------------------------------------------
\setbeamertemplate{note page}{%
	\scriptsize
	\ifbeamercolorempty[bg]{note page}{}{%
			\nointerlineskip%
			\insertvrule{\paperheight}{note page.bg}%
			\vskip-1\paperheight%
		}%
		\insertnote%
	}
\setbeamercolor{note page}{fg=foreground,bg=background}
\addtobeamertemplate{note page}{\setbeamerfont{itemize/enumerate subbody}{size=\scriptsize}}{}
\addtobeamertemplate{note page}{\setbeamerfont{itemize/enumerate subsubbody}{size=\scriptsize}}{}
