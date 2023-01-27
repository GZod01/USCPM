echo checking internet connection
Ping www.google.fr -n 1 -w 1000
cls
if errorlevel 1 (set internet="Not connected to internet") else (set internet="Connected to internet")

echo %internet%
if %internet% == "Connected to internet" (
    echo "<script>let url = 'http://gzod01.fr/uscpm/index.html'; fetch(url).then((response) => {if (!response.ok) {throw new Error(`HTTP error: ${response.status}`);};return response.text();}).then((text) => poemDisplay.textContent = text).catch((error) => poemDisplay.textContent = `Could not fetch verse: ${error}`);</script>" > ".\uscpm.html"
    echo "do"
    start "" ".\uscpm.html"
)
else (
    if exist ".\uscpm.html" (
        start "" ".\uscpm.html"
    ) else (
        msg "%USERNAME%" "Sorry, your computer can't access to internet and the USCPM file doesn't exist, if the error persist create an issue in the github: https://github.com/gzod01/uscpm"
        rem echo "x=msgbox("Sorry, your computer can't access to internet and the USCPM file doesn't exist, if the error persist create an issue in the github: https://github.com/gzod01/uscpm", Button+Icon, "ERROR USCPM")" > .\message.vbs
        rem .\message.vbs
        rem del .\message.vbs
    )
)