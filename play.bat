echo checking internet connection
Ping www.google.fr -n 1 -w 1000
cls
if errorlevel 1 (set internet="Not connected to internet") else (set internet="Connected to internet")

echo %internet%
if %internet% == "Connected to internet" (
    curl https://raw.githubusercontent.com/GZod01/USCPM/main/index.html > ".\uscpm.html"
    echo "do"
    start "" ".\uscpm.html"
)
else (
    if exist ".\uscpm.html" (
        start "" ".\uscpm.html"
    ) else (
        msg "%USERNAME%" "Sorry, your computer can't access to internet and the USCPM file doesn't exist, if the error persist create an issue in the github: https://github.com/gzod01/uscpm"
        # echo "x=msgbox("Sorry, your computer can't access to internet and the USCPM file doesn't exist, if the error persist create an issue in the github: https://github.com/gzod01/uscpm", Button+Icon, "ERROR USCPM")" > .\message.vbs
        # .\message.vbs
        # del .\message.vbs
    )
)