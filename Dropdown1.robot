*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}     https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php
*** Test Cases ***
Verify the login scenario with the valid credentials
      Open Browser                 ${url}         firefox
      Maximize Browser Window
      Wait Until Element Is Visible    id=state
      ${labels}=        Get Selected List Labels    id=state
      Log     ${labels}
      Select From List By Label   id=state         Uttar Pradesh
      Sleep    2s
      Wait Until Element Is Visible    id=city
      ${labels}=        Get Selected List Labels    id=city
      Log     ${labels}
      Select From List By Label   id=city          Lucknow
      Sleep    2s
      Close Browser
