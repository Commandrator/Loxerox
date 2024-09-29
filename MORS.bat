@echo off &title Mors Decoder&cls
set Girdi=:
set Yazdir=: 
set hata=0
Echo YAYDIM yazarak program hakkında bilgi alabilirsiniz.
:Main_Menu
cls
if %Hata%==1 Echo Hatali Karakter Girdiniz. &set Hata=0
Echo ___________________________________________________________________________________________________
Echo.
Echo Girdi%Girdi%
Echo.
Echo ___________________________________________________________________________________________________
Echo.
Echo Cikti%Yazdir%
Echo.
Echo ___________________________________________________________________________________________________
set /p Grilen_Karakter=Mors harfi:
if %Grilen_Karakter%==.-   set "Latin_Harfinde=A" &Goto Fonction
if %Grilen_Karakter%==-... set "Latin_Harfinde=B" &Goto Fonction
if %Grilen_Karakter%==-.-. set "Latin_Harfinde=C" &Goto Fonction
if %Grilen_Karakter%==-..  set "Latin_Harfinde=D" &Goto Fonction
if %Grilen_Karakter%==.    set "Latin_Harfinde=E" &Goto Fonction
if %Grilen_Karakter%==..-. set "Latin_Harfinde=F" &Goto Fonction
if %Grilen_Karakter%==--.  set "Latin_Harfinde=G" &Goto Fonction
if %Grilen_Karakter%==.... set "Latin_Harfinde=H" &Goto Fonction
if %Grilen_Karakter%==..   set "Latin_Harfinde=I" &Goto Fonction
if %Grilen_Karakter%==.--- set "Latin_Harfinde=J" &Goto Fonction
if %Grilen_Karakter%==-.-  set "Latin_Harfinde=K" &Goto Fonction
if %Grilen_Karakter%==.-.. set "Latin_Harfinde=L" &Goto Fonction
if %Grilen_Karakter%==--   set "Latin_Harfinde=M" &Goto Fonction
if %Grilen_Karakter%==-.   set "Latin_Harfinde=N" &Goto Fonction
if %Grilen_Karakter%==---  set "Latin_Harfinde=O" &Goto Fonction
if %Grilen_Karakter%==.--. set "Latin_Harfinde=P" &Goto Fonction
if %Grilen_Karakter%==--.- set "Latin_Harfinde=Q" &Goto Fonction
if %Grilen_Karakter%==.-.  set "Latin_Harfinde=R" &Goto Fonction
if %Grilen_Karakter%==...  set "Latin_Harfinde=S" &Goto Fonction
if %Grilen_Karakter%==-    set "Latin_Harfinde=T" &Goto Fonction
if %Grilen_Karakter%==..-  set "Latin_Harfinde=U" &Goto Fonction
if %Grilen_Karakter%==...- set "Latin_Harfinde=V" &Goto Fonction
if %Grilen_Karakter%==.--  set "Latin_Harfinde=W" &Goto Fonction
if %Grilen_Karakter%==-..- set "Latin_Harfinde=X" &Goto Fonction
if %Grilen_Karakter%==-.-- set "Latin_Harfinde=Y" &Goto Fonction
if %Grilen_Karakter%==--.. set "Latin_Harfinde=Z" &Goto Fonction

if %Grilen_Karakter%==----- set "Latin_Harfinde=0" &Goto Fonction
if %Grilen_Karakter%==.---- set "Latin_Harfinde=1" &Goto Fonction
if %Grilen_Karakter%==..--- set "Latin_Harfinde=2" &Goto Fonction
if %Grilen_Karakter%==...-- set "Latin_Harfinde=3" &Goto Fonction
if %Grilen_Karakter%==....- set "Latin_Harfinde=4" &Goto Fonction
if %Grilen_Karakter%==..... set "Latin_Harfinde=5" &Goto Fonction
if %Grilen_Karakter%==-.... set "Latin_Harfinde=6" &Goto Fonction
if %Grilen_Karakter%==--... set "Latin_Harfinde=7" &Goto Fonction
if %Grilen_Karakter%==---.. set "Latin_Harfinde=8" &Goto Fonction
if %Grilen_Karakter%==----. set "Latin_Harfinde=9" &Goto Fonction

if %Grilen_Karakter%==.-.-.- set "Latin_Harfinde=." &Goto Fonction
if %Grilen_Karakter%==--..-- set "Latin_Harfinde=," &Goto Fonction
if %Grilen_Karakter%==..--.. set "Latin_Harfinde=?" &Goto Fonction
if %Grilen_Karakter%==.----. set "Latin_Harfinde='" &Goto Fonction
if %Grilen_Karakter%==-.-.-- set "Latin_Harfinde=!" &Goto Fonction
if %Grilen_Karakter%==-..-.  set "Latin_Harfinde=/" &Goto Fonction
if %Grilen_Karakter%==-.--.  set "Latin_Harfinde=)" &Goto Fonction
if %Grilen_Karakter%==-.--.- set "Latin_Harfinde=(" &Goto Fonction
if %Grilen_Karakter%==---... set "Latin_Harfinde=:" &Goto Fonction
if %Grilen_Karakter%==-.-.-. set "Latin_Harfinde=;" &Goto Fonction
if %Grilen_Karakter%==-...-  set "Latin_Harfinde==" &Goto Fonction
if %Grilen_Karakter%==.-.-.  set "Latin_Harfinde=+" &Goto Fonction
if %Grilen_Karakter%==-....- set "Latin_Harfinde=-" &Goto Fonction
if %Grilen_Karakter%==..--.- set "Latin_Harfinde=_" &Goto Fonction
if %Grilen_Karakter%==.--.-. set "Latin_Harfinde=@" &Goto Fonction
if %Grilen_Karakter%==...-..- set "Latin_Harfinde=$" &Goto Fonction

if %Grilen_Karakter%==temizle set Yazdir=: &set Girdi=: &Goto Main_Menu
if %Grilen_Karakter%==TEMİZLE set Yazdir=: &set Girdi=: &Goto Main_Menu
if %Grilen_Karakter%==* set Yazdir=: &set Girdi=: &Goto Main_Menu
if %Grilen_Karakter%==YARDIM Goto help
if %Grilen_Karakter%==yardim Goto help
if %Grilen_Karakter%==RENK set /p renk=Renk kodu: &Color %renk% &Goto Main_Menu
if %Grilen_Karakter%==renk set /p renk=Renk kodu: &Color %renk% &Goto Main_Menu
if %Grilen_Karakter%==q Exit
if %Grilen_Karakter%==Q Exit
set Hata=1
Goto Main_Menu
:Fonction
set Girdi=%Girdi% %Grilen_Karakter%
set Yazdir=%Yazdir%%Latin_Harfinde%
Goto Main_Menu
:help
cls
Echo *       -Ekran Girdi ve Çıktısını Temizler.
Echo TEMIZLE -Ekran Girdi ve Çıktısını Temizler.
Echo YARDIM  -Yardım Ekranını Açar.
Echo Q       -programı kapatır.
Echo Color	-Ekran Rengini Değiştirir.
Echo 	COLOR [attr]
Echo.
Echo. 	  attr Specifies color attribute of console output
Echo.
Echo 	Color attributes are specified by TWO hex digits -- the first
Echo 	corresponds to the background; the second the foreground.  Each digit
Echo 	can be any of the following values:
Echo.	
Echo 	    0 = Black       8 = Gray
Echo 	    1 = Blue        9 = Light Blue
Echo 	    2 = Green       A = Light Green
Echo 	    3 = Aqua        B = Light Aqua
Echo 	    4 = Red         C = Light Red
Echo 	    5 = Purple      D = Light Purple
Echo 	    6 = Yellow      E = Light Yellow
Echo 	    7 = White       F = Bright White
Echo.	
Echo 	If no argument is given, this command restores the color to what it was
Echo 	when CMD.EXE started.  This value either comes from the current console
Echo 	window, the /T command line switch or from the DefaultColor registry
Echo 	value.
Echo. 	
Echo 	The COLOR command sets ERRORLEVEL to 1 if an attempt is made to execute
Echo 	the COLOR command with a foreground and background color that are the
Echo 	same.
echo.
Echo içerdiği karakterler;
Echo ABCDEFGHIJKLMNOPQRSTUVWXYZ
Echo 091234567890
Echo .,?')(+=-_$:!/=@
pause
Goto Main_Menu
