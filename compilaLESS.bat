::mi posiziono nella cartella da cui lancio lo script
%~d0
cd %~p0
cls

SET tipo=%1
SET fileTipoL=compila-%tipo%.less
SET fileTipoC=compila-%tipo%.css
SET fileTipoB=compila-%tipo%.bat

ECHO lessc .\iter2\less\%fileTipoL% %fileTipoC%>%fileTipoB%
ECHO exit>>%fileTipoB%
START "" %fileTipoB%

:FindSection
IF NOT EXIST %fileTipoC% GOTO WaitSection
GOTO ExitSection
:WaitSection
ping -w 1000 -n 1 10.9.9.9
GOTO FindSection
:ExitSection

MORE %fileTipoC%>.\css\%tipo%.css
ECHO /*%date% %time%*/>> .\css\%tipo%.css
::pulizia
del %fileTipoC%
del %fileTipoB%
exit