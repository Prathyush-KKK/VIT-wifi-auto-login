#!/bin/bash

# Define website to ping and login url
ping_website="www.google.com"
login_url="https://phc.prontonetworks.com/cgi-bin/authlogin?URI=http://captive.apple.com/hotspot-detect.html"

# Define login credentials
user_id="{YourUserId}"
password="{YourPassword}"
service_name="ProntoAuthentication"

while true; do
  # Check if the website can be pinged
  if ping -q -c 1 $ping_website >/dev/null; then
    # Website is pingable, sleep for 10 seconds before testing again
    sleep 10
  else
    # Website is not pingable, log in to captive portal using curl command
    curl -kX POST -d "userId=$user_id" -d "password=$password" -d "serviceName=$service_name" -d "Submit22=Login" "$login_url" >/dev/null

    # Wait for 5 seconds before testing ping again
    sleep 5
  fi
done
