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

% Defualt Colorscheme
\definecolor{background}{HTML}{f8f8f2} % #f8f8f2
\definecolor{foreground}{HTML}{282a36} % #282a36
\definecolor{comment}{HTML}{6272a4} 	% #6272a4
\definecolor{color1}{HTML}{bd93f9} 		% #bd93f9 % Titles
\definecolor{color2}{HTML}{50fa7b} 		% #50fa7b % emphasis
\definecolor{color3}{HTML}{ffb86c} 		% #ffb86c % Alerts
\definecolor{color4}{HTML}{ff79c6} 		% #ff79c6
\definecolor{color5}{HTML}{8be9fd} 		% #8be9fd
\definecolor{color6}{HTML}{ff5555} 		% #ff5555
\definecolor{color7}{HTML}{44475a} 		% #44475a
\definecolor{color8}{HTML}{f1fa8c} 		% #f1fa8c
\definecolor{url}{HTML}{f1fa8c} 			% #f1fa8c % URLs
\definecolor{math}{HTML}{f1fa8c} 		% #f1fa8c % Math

% Dracula colorscheme
\DeclareOption{dracula}{
	\definecolor{background}{HTML}{282a36} % #282a36
	\definecolor{foreground}{HTML}{f8f8f2} % #f8f8f2
	\definecolor{comment}{HTML}{6272a4} 	% #6272a4
	\definecolor{color1}{HTML}{bd93f9} 		% #bd93f9
	\definecolor{color2}{HTML}{50fa7b} 		% #50fa7b
	\definecolor{color3}{HTML}{ffb86c} 		% #ffb86c
	\definecolor{color4}{HTML}{ff79c6} 		% #ff79c6
	\definecolor{color5}{HTML}{8be9fd} 		% #8be9fd
	\definecolor{color6}{HTML}{ff5555} 		% #ff5555
	\definecolor{color7}{HTML}{44475a} 		% #44475a
	\definecolor{color8}{HTML}{f1fa8c} 		% #f1fa8c
	\definecolor{url}{HTML}{f1fa8c} 			% #f1fa8c
	\definecolor{math}{HTML}{f1fa8c} 		% #f1fa8c
}

% Gruvbox colorscheme
\DeclareOption{gruvbox}{
	\definecolor{background}{HTML}{282828} % #282828
	\definecolor{foreground}{HTML}{ebdbb2} % #ebdbb2
	\definecolor{comment}{HTML}{928374} 	% #928374
	\definecolor{color1}{HTML}{cc241d} 		% #cc241d
	\definecolor{color2}{HTML}{98971a} 		% #98971a
	\definecolor{color3}{HTML}{d79921} 		% #d79921
	\definecolor{color4}{HTML}{458588} 		% #458588
	\definecolor{color5}{HTML}{b16286} 		% #b16286
	\definecolor{color6}{HTML}{689d6a} 		% #689d6a
	\definecolor{color7}{HTML}{a89984} 		% #a89984
	\definecolor{url}{HTML}{f1fa8c} 			% #f1fa8c
	\definecolor{math}{HTML}{f1fa8c} 		% #f1fa8c
}

\ProcessOptions\relax
\LoadClass{beamer}

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
\setbeamercolor{alerted text}{fg=color1}
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

%
% \setbeamercolor{block body alerted}{bg=normal text.bg!90!black}
% \setbeamercolor{block body}{bg=normal text.bg!90!black}
% \setbeamercolor{block body example}{bg=normal text.bg!90!black}
% \setbeamercolor{block title alerted}{use={normal text,alerted text},fg=alerted text.fg!75!normal text.fg,bg=normal text.bg!75!black}
% \setbeamercolor{block title}{bg=blue}
% \setbeamercolor{block title example}{use={normal text,example text},fg=example text.fg!75!normal text.fg,bg=normal text.bg!75!black}
% \setbeamercolor{fine separation line}{}
% \setbeamercolor{separation line}{}
