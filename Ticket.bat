@ECHO OFF &set fox=0
if exist %Cd%\List\Act.bat call %cd%\List\Act.bat
if %fox%==1 goto cXS
goto Menu
:Menu
cls
Echo ------------------------------
Echo 1-) Baglanti Dosyasi olustur
Echo.
Echo 2-) Baglanti Dosyasi sec
Echo.
Echo 3-) Otomatik Ekle
Echo.
Echo 4-) Kapat
Echo ------------------------------
Set /p Oxig=Numara;
if %Oxig%==1 Goto WOX
if %oxig%==2 Goto NPO
if %Oxig%==3 Goto XUd
if %Oxig%==4 Exit
GOTO Menu

:WOX
cls 
Echo ------------------------------
Echo.
Echo 1-) Butun profilleri kaydet
Echo.
Echo 2-) Profil sec 
Echo ------------------------------
Set /P Noxu=Numara;
if %Noxu%==1 goto Mijix
if %Noxu%==2 Goto Dydwz

:Mijix
cls
If not exist %cd%\List md "List"
netsh wlan export profile key=clear folder=%cd%\List
if %ERRORLEVEL% EQU 0 ( cls &Echo islem Tamam &goto Menu ) Else ( cls &Echo Bir hata olustu. Lutfen Yonetici oarak baslatmayi deneyin. 3ms sonra tekrar denenicek. &ping localhost -n 3 >nul &Goto Mijix )

:Dydwz
cls
Echo ------------------------------
Netsh wlan show profile
Echo ______________________________
Echo Bir profil ismi sec ve yaz.
Echo ------------------------------
If not exist %cd%\List md "List"
set /p Hxus=Profil;
netsh wlan export profile name="%Hxus%" key=clear folder=%cd%\List
cls
if %ERRORLEVEL% EQU 0 ( cls &Echo islem Tamam &goto Menu ) Else ( cls &Echo %Hxus% Adinda bir profile sahip degilsiniz... &ping localhost -n 3 >nul &Goto Dydwz )

:NPO
cls
Echo ------------------------------
Dir %cd%\List\ *.xls
Echo ------------------------------
Set /p Exue=xls Dosyasi Sec;
netsh wlan add profile "%cd%\List\%Exue%"
if %ERRORLEVEL% EQU 0 ( cls &Echo islem Tamam &goto Menu ) Else ( cls &Echo %Exue% Adinda bir xls dosyasi bulunmamaktadir... &ping localhost -n 3 >nul &Goto NPO )

:XUd
cls
Echo ------------------------------
Echo bu ozellik Yazilima tiklar tiklamaz daha onceden kaydetmis oldugun bir profili ekleme yardimci olur.
Echo Progrmami tasinit halde iken List dosyasini ayirmayiniz.
Echo ------------------------------
Dir "%cd%\List\" *.xls
Echo ------------------------------
Set /p shYS=xls Dosyasi Sec;
if not exist %cd%\List\%shYS% Goto Rxsd
Echo @echo off >%cd%\List\Act.bat
Echo Echo Profil Ekleniyor... >>%cd%\List\Act.bat
Echo cls >>%cd%\List\Act.bat
Echo netsh wlan add profile "%shYS%">>%cd%\List\Act.bat
Echo :Mxuf >>%cd%\List\Act.bat
Echo cls >>%cd%\List\Act.bat
Echo Echo Baglanma ozelligini kapatmak istermisin?>>%cd%\List\Act.bat
Echo Echo 1-) Evet >>%cd%\List\Act.bat
Echo Echo 0-) Hayir >>%cd%\List\Act.bat
Echo set /p dSDA=(1/0): >>%cd%\List\Act.bat
Echo if %%dSDA%% ==1 SET fox=1 >>%cd%\List\Act.bat
Echo if %%dSDA%% ==1 Goto NoJo >>%cd%\List\Act.bat
Echo if %%dSDA%% ==0 Goto NoJo >>%cd%\List\Act.bat
Echo Goto Mxuf >>%cd%\List\Act.bat
Echo :NoJo >>%cd%\List\Act.bat

cls &Echo eklendi. &ping localhost -n 2 >nul 

goto Menu
:Rxsd
Echo Boyle bir xls dosyasi bulunamamktadir. &Echo Lutfen tekrar deneyin. &ping localhost -n 3 >nul &Goto XUd

:cXS
del %Cd%\List\Act.bat
goto Menu