*** Settings ***
Documentation  This resource file contains browser configuration
...  and reusable scripts

Library  SeleniumLibrary

*** Variables ***
${BROWSER_NAME}  chrome
${URL}   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
Launch Browser and Navigate to Url

  Open Browser  browser=${BROWSER_NAME}
  Maximize Browser Window
  Set Selenium Implicit Wait    30s
  Go To    url=${URL}

Capture Screenshot And CLose Browser
  Run Keyword And Ignore Error    Capture Page Screenshot
  Close Browser