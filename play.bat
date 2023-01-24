echo checking internet connection
Ping www.google.fr -n 1 -w 1000
cls
if errorlevel 1 (set internet=Not connected to internet) else (set internet=Connected to internet)

echo %internet%
if %internet% == Connected to internet {
    curl https://google.com > .\google.html
}
start "" http://www.stackoverflow.com
