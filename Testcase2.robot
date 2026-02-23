Test Case 1: Register User
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
      Wait Until Element Is Visible    xpath://h2[normalize-space()='Login to your account']
      Click Element    xpath://input[@data-qa='login-email']      
      Input Text    xpath://input[@data-qa='login-email']     sunil12@gmail.com
      Click Element    xpath://input[@placeholder='Password']
      Input Text    xpath://input[@placeholder='Password']   sunil@123
      Click Element    xpath://button[normalize-space()='Login']
      Go To    ${url}
      Close the Browser