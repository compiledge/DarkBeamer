\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{darkbeamer}[2023/08/28 v0.1 Dark Beamer]

\RequirePackage{xcolor}				% Custom colors

% Passing every unknown option to beamer class
\DeclareOption*{%
	\PassOptionsToClass{\CurrentOption}{beamer}%
}

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

% \setbeamercolor{alerted text}{fg=yellow}
