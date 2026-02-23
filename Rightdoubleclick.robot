*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}                          https://www.amazon.com/
*** Test Cases ***
Verify the Alerts
      Open Browser                 ${url}         chrome
      Maximize Browser Window
      Wait Until Element Is Visible    xpath://a[normalize-space()='Sell']
      Open Context Menu    link = Sell
      Sleep    2s
      Double Click Element    xpath://a[normalize-space()='Gift Cards']
      Sleep    2s
      Close Browser