*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}                          https://practice.expandtesting.com/hovers
*** Test Cases ***
Verify the Alerts
      Open Browser                 ${url}         firefox
      Maximize Browser Window
      Wait Until Element Is Visible    xpath://div[@class='container']//div[1]//img[1]
      Mouse Over    xpath://div[@class='container']//div[1]//img[1]
      Sleep    2s
      Element Should Be Visible    xpath://h5[normalize-space()='name: user1']

      Close Browser