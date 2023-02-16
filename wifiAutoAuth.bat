@echo off

:: Define website to ping and login url
set "ping_website=www.google.com"
set "login_url=https://phc.prontonetworks.com/cgi-bin/authlogin?URI=http://captive.apple.com/hotspot-detect.html"

:: Define login credentials
set "user_id={YourUserId}"
set "password={YourPassword}"
set "service_name=ProntoAuthentication"

:loop
  :: Check if the website can be pinged
  ping -n 1 %ping_website% >nul
  if %errorlevel% equ 0 (
    :: Website is pingable, sleep for 10 seconds before testing again
    timeout /t 10 >nul
  ) else (
    :: Website is not pingable, log in to captive portal using curl command
    curl -k -X POST -d "userId=%user_id%" -d "password=%password%" -d "serviceName=%service_name%" -d "Submit22=Login" "%login_url%" >nul

    :: Wait for 5 seconds before testing ping again
    timeout /t 5 >nul
  )

goto :loop
