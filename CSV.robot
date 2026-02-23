*** Settings ***
Library  SeleniumLibrary
Library  DataDriver  file=C:\\Users\\Sushi\\PycharmProjects\\Rbotframework\\TestData\\ddtLogindataCSV.csv   sheet_name=ddtLogindataCSV


Test Template         Login Test
Test Setup        Open Browser      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login   chrome
Test Teardown     Close Browser

*** Test Cases ***
Login with user          ${username}   and ${password}
*** Keywords ***
Login Test
      [Arguments]       ${username}      ${password}
      Wait Until Element Is Visible    xpath://input[@name='username']
      Input Text    xpath://input[@name='username']    ${username}
      Input Text    xpath://input[@name='password']    ${password}
      Click Element    xpath://button[@type='submit']
      Wait Until Element Is Visible  xpath://h6[@class='oxd-text oxd-text--h6 oxd-topbar-header-breadcrumb-module']
      Element Should Be Visible   xpath://h6[@class='oxd-text oxd-text--h6 oxd-topbar-header-breadcrumb-module']   Dashboard
      Close Browser