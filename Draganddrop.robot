*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}                 https://the-internet.herokuapp.com/drag_and_drop
*** Test Cases ***
Verify the Alerts
      Open Browser                 ${url}         firefox
      Maximize Browser Window
      Wait Until Element Is Visible    xpath://div[@id='column-a']
      Drag And Drop    xpath://div[@id='column-a']    xpath://div[@id='column-b']
      Sleep    2s
      Close Browser