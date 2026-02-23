#A frame or iframe is an HTML document embedded inside another HTML page.
# frames will have id, name and class
#can identify the frame with indexes 0 or 1
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}                         https://jqueryui.com/datepicker/
*** Test Cases ***
Verify the Alerts
      Open Browser                 ${url}         chrome
      Maximize Browser Window
      Set Selenium Implicit Wait    5s
      Select Frame    xpath://iframe[@class='demo-frame']
      Sleep    2s
      Click Element    xpath://input[@id='datepicker']
      Sleep    2s
      Click Element    xpath://a[contains(text(),'21')]
      Close Browser