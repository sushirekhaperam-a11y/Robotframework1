*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
Verify the login scenario with the valid credentials
      Open Browser                 ${url}         chrome
      Maximize Browser Window
      ${elements}=        Get WebElements    xapth://input[@type='checkbox']
      FOR    ${element}    IN    @{elements}
          Click Element   ${element}
          Sleep    2s

      END
      Close Browser