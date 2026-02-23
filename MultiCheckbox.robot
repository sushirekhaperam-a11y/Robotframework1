*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://www.tutorialspoint.com/selenium/practice/check-box.php
*** Test Cases ***
Verify the login scenario with the valid credentials
      Open Browser                 ${url}         firefox
      Maximize Browser Window
      ${elements}=        Get WebElements   xapth://input[starts-with(@id,'c_bs_')]
      FOR    ${element}    IN    @{elements}
          Click Element   ${element}
          Sleep    2s
      END
      Close Browser