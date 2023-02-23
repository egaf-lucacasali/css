:: script per lanciare la complilazione del css di iter2
:: per poterlo eseguire occorre installare lessc col comando:
:: npm install less -g
:: al termine lancia il confronto con WinMerge

::mi posiziono nella cartella da cui lancio lo script
%~d0
cd %~p0
cls

echo less

start "" compilaLESS.bat styles
start "" compilaLESS.bat egafd
start "" compilaLESS.bat egafdp
start "" compilaLESS.bat print

echo WinMerge
start "" ".\..\iter2.WinMerge"
echo fine