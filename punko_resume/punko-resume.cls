\NeedsTeXFormat{LaTeX2e}

% Зачем: Определение имени нового класса документа.
\ProvidesClass{punko-resume}[2020/10/25 resume]

% Зачем: Подключение и настройка исходного класса документа.
\LoadClass[a4paper, 12pt]{article}

% Зачем: Определение специальных кодировок системы.
\RequirePackage[T1]{fontenc}

% Зачем: Установка и настройка шрифтов.
\RequirePackage[charter]{mathdesign}

% Зачем: Определение основного языка документа.
\RequirePackage[UKenglish]{babel}

% Зачем: Установка кодировки исходных файлов.
\RequirePackage[utf8]{inputenc}

% Зачем: Настройка положения текста на странице.
\RequirePackage[absolute]{textpos}

% Зачем: Настройка отступов от границ страницы документа.
\RequirePackage[hmargin=0.5cm, vmargin=0.5cm]{geometry}

% Зачем: Подключение пакета для вставки ссылок в тексте.
\RequirePackage[hidelinks]{hyperref}

% Зачем: Подключение пакета для окрашивания текста в документе.
\RequirePackage[dvipsnames, usenames]{xcolor}

% Зачем: Подключение пакета для вставки графики в тексте.
\RequirePackage{graphicx}

% Зачем: Подключение пакета для выравнивания текста в документе.
\RequirePackage{ragged2e}

\RequirePackage{parskip}
\setlength{\parskip}{0pt}
\setlength{\parindent}{0pt}

% Зачем: Команда для создания новой секции с распределеным по всей длинне текстом.
\renewenvironment{textsection}{\trivlist\justifying\item\relax}{\endtrivlist\vspace{5pt}}

\RequirePackage{enumitem}
\setitemize{noitemsep, itemindent=0pt, leftmargin=15pt, parsep=2.5pt, partopsep=0pt, topsep=0pt, label=$\bullet$}

% Зачем: Команда для создания нового перечисления в тексте документа.
\renewenvironment{enumerate}{\begin{itemize}}{\end{itemize}\vspace{5pt}}
\let\olditem\item\renewcommand\item{\olditem\justifying}

% Зачем: Команда для создания основного заголовка документа.
\newcommand{\resumeheader}[8]{
    \centering{%
        \color{black}\fontsize{45pt}{45pt}\selectfont\normalfont{#1}~\textbf{#2}%
    } \\
    \vspace{5pt}
    \centering{%
        \color{black}\normalsize\normalfont{#3}~~$\bullet$~~{#4}%
    } \\
    \vspace{5pt}
    \centering{%
        \color{black}\small\normalfont{#5}~$\mid$~{#6}~$\mid$~{#7}~$\mid$~{#8}%
    } \\
    % Примечание: Отделение основного заголовка от содержимого документа.
    \noindent\makebox[\linewidth]{\rule{\paperwidth}{0.5pt}}
    \vspace{-25pt}
}

% Зачем: Команда для создания новой секции в документе.
\renewcommand{\section}[1]{
    \vspace{10pt}
    \raggedright{%
        \color{darkgray}\large\normalfont\bfseries\uppercase{#1}%
    } \\
    \vspace{5pt}
}

\newcommand{\education}[5]{
    \raggedright{%
        \color{black}\normalsize\normalfont\textbf{#1}%
    } \\
    \raggedright{%
        \color{darkgray}\normalsize\normalfont{#2}~$\mid$~{#3}~$\mid$~{#4}%
    } \\
    \raggedright{%
        \color{black}\normalsize\normalfont\textit{#5}%
    } \\
    \vspace{5pt}
}

% Зачем: Команда для создания новой секции опыта специалиста.
\newcommand{\experience}[4]{
    \raggedright{%
        \color{black}\normalsize\normalfont\textbf{#1}~$\mid$~{#2}%
    } \\
    \raggedright{%
        \color{darkgray}\normalsize\normalfont{#3}~$\mid$~{#4}%
    } \\
    \vspace{0pt}
}

% Зачем: Команда для создания новой секции с перечислением основных навыков специалиста.
\newcommand{\skill}[2]{
    \raggedright{%
        \color{black}\normalsize\normalfont\textbf{#1:}%
    } \\
    \raggedright{%
        \color{black}\normalsize\normalfont{#2}%
    } \\
    \vspace{5pt}
}

% Зачем: Команда для создания новой секции с перечислением основных статей специалиста.
\newcommand{\publication}[8]{
    \href{#8}{%
        \color{black}\normalsize\normalfont{#1}.~"{#2}".~In:~\textit{#3}.~{#4}(#5),~pp.~{#6}~({#7})%
    }
    \vspace{0pt}
}
