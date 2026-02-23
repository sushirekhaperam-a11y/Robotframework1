*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://www.tutorialspoint.com/selenium/practice/check-box.php
*** Test Cases ***
Verify the login scenario with the valid credentials
      Open Browser                 ${url}         Firefox
      Maximize Browser Window
      Wait Until Element Is Visible    xpath://a[normalize-space()='Check Box']
      Click Element    xpath://a[normalize-space()='Check Box']
       Click Element    xpath://input[@id='c_bs_2']
       Click Element    xpath://input[@id='c_bs_2']
       Close Browser