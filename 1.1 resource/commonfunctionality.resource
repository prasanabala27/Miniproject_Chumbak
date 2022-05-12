*** Settings ***
Documentation   This file will keep the configuration details

Library     SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER}      chrome
${URL}      https://www.chumbak.com/


*** Keywords ***
Launch Browser
    Append To Environment Variable      path    ${EXECDIR}${/}driver
    Open Browser    browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Screenshot Directory    ${EXECDIR}${/}1.2 screenshots
    Go To    ${URL}