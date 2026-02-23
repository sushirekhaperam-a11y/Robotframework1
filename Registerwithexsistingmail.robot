*** Settings ***
Library  SeleniumLibrary
Resource    ../Resource/Resource.robot

*** Variables ***
${url}       https://automationexercise.com/
*** Test Cases ***
Verify the login scenario with the valid credentials
      Open Browser                 ${url}         chrome
      Maximize Browser Window
      Wait Until Element Is Visible    xpath://a[normalize-space()='Signup / Login']
      Click Element    xpath://a[normalize-space()='Signup / Login']
      Wait Until Element Is Visible    xpath://h2[normalize-space()='New User Signup!']
      Click Element    xpath://input[@placeholder='Name']
      Input Text    xpath://input[@placeholder='Name']     sushi
      Click Element    xpath://input[@data-qa='signup-email']
      Input Text    xpath://input[@data-qa='signup-email']    sushi123@gmail.com
      Click Element    xpath://button[normalize-space()='Signup']
      Wait Until Element Is Visible    xpath://p[normalize-space()='Email Address already exist!']
      Close the Browser