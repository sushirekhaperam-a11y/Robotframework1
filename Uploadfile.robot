*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}     https://the-internet.herokuapp.com/upload
*** Test Cases ***
Verify the Alerts
      Open Browser                 ${url}         firefox
      Maximize Browser Window
      Wait Until Element Is Visible    xpath://input[@id='file-upload']
      Choose File    xpath://input[@id='file-upload']    C:\\Users\\Sushi\\Pictures\\sunil pics.jpeg
      Click Element    xpath://input[@id='file-submit']
      Sleep    2s
      Element Text Should Be    xpath://h3[normalize-space()='File Uploaded!']    File Uploaded!
      Sleep   2s
      Close Browser
