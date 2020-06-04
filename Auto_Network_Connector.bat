@echo off &color 0f &cls &Title Auto wifi connector [ If status: 0 connected to the network ]
SET Ping_Adress= /Network server you want to connect to
SET Ping_Number= /Ping Suncuya  "ms" atılıack ping süresi
SET Wifi_Ssid=   /Connected wireless profile name
:MEN
ping %Ping_Adress% -n %Ping_Number% >Nul
if %ERRORLEVEL% EQU 0 ( Title Status: %errorlevel% ) Else ( title Status: %errorlevel% &Echo Connection error. Reconnecting...  &netsh wlan disconnect &cls &netsh wlan connect ssid=%Wifi_Ssid% name=%Wifi_Ssid% &cls )
GOTO MEN 
