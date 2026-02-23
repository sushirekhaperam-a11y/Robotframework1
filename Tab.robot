*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}                          https://rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
Verify the Alerts
      Open Browser                 ${url}         chrome
      Maximize Browser Window
      Set Selenium Implicit Wait    5s
      Wait Until Element Is Visible    xpath://a[@id='opentab']
      Click Element    link=Open Tab
      @{titles} =     Get Window Titles
      Log To Console    ${titles}
      Switch Window   title = QAClick Academy - A Testing Academy to Learn, Earn and Shine
      Switch Window   MAIN
      Close Browser