*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}     https://rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
Verify the Alerts
      Open Browser                 ${url}         firefox
      Maximize Browser Window
      Wait Until Element Is Visible   xpath://input[@id='alertbtn']
      Click Element    xpath://input[@id='alertbtn']
      #Informational alert - accept is for ok button
      Handle Alert     action=ACCEPT       timeout=3
      Sleep    5s
      Click Element    xpath://input[@id='confirmbtn']
      #Informational alert - accept is for ok button
      Handle Alert     action=DISMISS     timeout=3
      Sleep    5s
      Close Browser
