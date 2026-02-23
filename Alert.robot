*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}     https://the-internet.herokuapp.com/javascript_alerts
*** Test Cases ***
Verify the Alerts
      Open Browser                 ${url}         firefox
      Maximize Browser Window
      Wait Until Element Is Visible    xpath:(//button)[1]
      Click Element    xpath:(//button)[1]
      #Informational alert - accept is for ok button
      Handle Alert     action=ACCEPT       timeout=3
      Sleep    5s
      Click Element    xpath:(//button)[2]
      #Confirmational alert - accept is for ok button and dismiss for the cancel
      Handle Alert     action=DISMISS     timeout=3
      Sleep    5s
      Click Element    xpath:(//button)[3]
      Input Text Into Alert    Hello
      #Prompt alert - accept is for ok button and dismiss for the cancel
      Sleep    5s
      Close Browser
      