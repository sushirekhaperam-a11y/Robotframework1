*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}     https://www.tutorialspoint.com/selenium/practice/upload-download.php
*** Test Cases ***
Verify the Alerts
      Open Browser                 ${url}         firefox
      Maximize Browser Window
      Wait Until Element Is Visible    xpath://a[normalize-space()='Upload and Download']
      Click Element    xpath://a[normalize-space()='Upload and Download']
      Choose File    xpath://input[@id='uploadFile']         "C:\\Users\\Sushi\\Pictures\\sunil pics.jpeg"
      Sleep   2s
      Close Browser