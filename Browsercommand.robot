*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}                          https://the-internet.herokuapp.com/windows
*** Test Cases ***
Verify the Alerts
      Open Browser                 ${url}         chrome
      Maximize Browser Window
      Set Selenium Implicit Wait    5s
      Go Back
      Sleep    2s
      Go To    ${url}
      Sleep    2s
      Reload Page
      Sleep    2s
      Close Browser