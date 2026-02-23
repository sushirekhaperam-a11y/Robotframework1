*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}     https://www.tutorialspoint.com/selenium/practice/alerts.php
*** Test Cases ***
Verify the Alerts
      Open Browser                 ${url}         chrome
      Maximize Browser Window
      Wait Until Element Is Visible   xpath:(//button[@type = 'button'])[6]
      Click Element    xpath:(//button[@type = 'button'])[6]
      #Informational alert - accept is for ok button
      Handle Alert     action=ACCEPT       timeout=3
      Sleep    5s
      Click Element   xpath:(//button[@type = 'button'])[8]
      #Informational alert - accept is for ok button
      Handle Alert     action=ACCEPT       timeout=3
      Sleep    5s
      Click Element    xpath:(//button[@type = 'button'])[9]
      Input Text Into Alert    Hello
      #Prompt alert - accept is for ok button and dismiss for the cancel
      Sleep    5s
      Close Browser
