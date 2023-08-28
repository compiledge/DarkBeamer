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

% Dracula colorscheme
\DeclareOption{dracula}{
	\definecolor{background}{HTML}{282a36} % #282a36
	\definecolor{foreground}{HTML}{f8f8f2} % #f8f8f2
	\definecolor{comment}{HTML}{6272a4} % #6272a4
	\definecolor{grey}{HTML}{44475a} % #44475a
	\definecolor{cyan}{HTML}{8be9fd} % #8be9fd
	\definecolor{green}{HTML}{50fa7b} % #50fa7b
	\definecolor{orange}{HTML}{ffb86c} % #ffb86c
	\definecolor{pink}{HTML}{ff79c6} % #ff79c6
	\definecolor{purple}{HTML}{bd93f9} % #bd93f9
	\definecolor{red}{HTML}{ff5555} % #ff5555
	\definecolor{yellow}{HTML}{f1fa8c} % #f1fa8c
	\definecolor{url}{HTML}{f1fa8c} % #f1fa8c
	\definecolor{math}{HTML}{f1fa8c} % #f1fa8c
}

\ProcessOptions\relax
\LoadClass{beamer}


% Defining theme
\usetheme{\mytheme}

% % Custom colors
%
% % Text
% \setbeamercolor{normal text}{bg=black,fg=foreground}
% \setbeamercolor{background canvas}{bg=background}
% \setbeamercolor{alerted text}{fg=orange}
% \setbeamercolor{frametitle}{fg=foreground}
%
% % Titles
% \setbeamercolor{titlelike}{fg=purple, bg=background!95}
% \setbeamercolor{title}{fg=purple, bg=background!95}
%
%
% % Lists
%
% \setbeamercolor{structure}{bg=black, fg=background}
% \setbeamercolor{block body alerted}{bg=normal text.bg!90!black}
% \setbeamercolor{block body}{bg=normal text.bg!90!black}
% \setbeamercolor{block body example}{bg=normal text.bg!90!black}
% \setbeamercolor{block title alerted}{use={normal text,alerted text},fg=alerted text.fg!75!normal text.fg,bg=normal text.bg!75!black}
% \setbeamercolor{block title}{bg=blue}
% \setbeamercolor{block title example}{use={normal text,example text},fg=example text.fg!75!normal text.fg,bg=normal text.bg!75!black}
% \setbeamercolor{fine separation line}{}
% \setbeamercolor{item projected}{fg=black}
% \setbeamercolor{palette sidebar primary}{use=normal text,fg=normal text.fg}
% \setbeamercolor{palette sidebar quaternary}{use=structure,fg=structure.fg}
% \setbeamercolor{palette sidebar secondary}{use=structure,fg=structure.fg}
% \setbeamercolor{palette sidebar tertiary}{use=normal text,fg=normal text.fg}
% \setbeamercolor{section in sidebar}{fg=brown}
% \setbeamercolor{section in sidebar shaded}{fg=grey}
% \setbeamercolor{separation line}{}
% \setbeamercolor{sidebar}{bg=red}
% \setbeamercolor{sidebar}{parent=palette primary}
% \setbeamercolor{subsection in sidebar}{fg=brown}
% \setbeamercolor{subsection in sidebar shaded}{fg=grey}
%
% \setbeamercolor{section in head/foot}{bg=background, fg=foreground}
%
% % custom template
%
% % Lists
% \setbeamertemplate{itemize items}{$\color{foreground}\bullet$}
%
% % \setbeamertemplate{enumerate item}[]
%
% \setbeamertemplate{title page}[default]
%
% % Suppress the navigation symbols
% \beamertemplatenavigationsymbolsempty
