@echo off &color 0f &cls &Title Auto wifi connector [ If status: 0 connected to the network ]
if exist %tmp%\Connector\Old_inf.bat call %tmp%\Connector\Old_inf.bat
if exist %tmp%\Connector\Old_inf.bat Goto Noxe
:Zet
SET Ping_Number=3
SET /P Ping_Adress=Test ip:
SET /P Wifi_Ssid=Wrilles_SSID:
if not exist %tmp%\Connector md "%tmp%\Connector"
echo @echo off >>%TMP%\Connector\Old_inf.bat &echo SET Ping_Adress=%Ping_Adress% >>%TMP%\Connector\Old_inf.bat &echo SET Wifi_Ssid=%Wifi_Ssid% >>%TMP%\Connector\Old_inf.bat &cls
:MEN
ping %Ping_Adress% -n %Ping_Number% >Nul
if %ERRORLEVEL% EQU 0 ( Title Status: %errorlevel% ) Else ( title Status: %errorlevel% &Echo Connection error. Reconnecting...  &netsh wlan disconnect &cls &netsh wlan connect ssid=%Wifi_Ssid% name=%Wifi_Ssid% &cls )
GOTO MEN 
:Noxe
cls
echo Son kullanilan baglantiya yeniden baglanmak istermisin?
echo 1-) EVET
echo.
echo 2-) HAYIR
echo _______________________________________________________
SET /P ONAY=Numara:
if %ONAY%==1 GOTO Men
if %ONAY%==2 GOTO Zet
Goto Noxe


SET Ping_Number=, Ping Suncuya  "ms" atılıack ping süresi
%TMP%\Connector\Old_inf.bat, Son bağlanılan Adres ve Ağ bilgisini verir.
