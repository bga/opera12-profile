robocopy "%~dp0.\." "%appdata%\Opera\Opera" /e /xd ".git" "priv" _*
echo find . -maxdepth 1 -mindepth 1 -not -name "priv" -exec rm -rf {} ';' > "%appdata%\Opera\Opera\cleanUp.sh"
