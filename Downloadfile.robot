*** Settings ***
Library  SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${url}     https://the-internet.herokuapp.com/download
*** Test Cases ***
Verify the Alerts
      Open Browser                 ${url}         firefox
      Maximize Browser Window
      Wait Until Element Is Visible    xpath://a[normalize-space()='some-file.txt']
      Click Element    xpath://a[normalize-space()='some-file.txt']
      ${files}=       List Files In Directory   C:\\Users\\Sushi\\Downloads\\some-file.txt
      List Should Contain Value      ${files}        some-file.txt
      Sleep    2s
      Close Browser
