*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login
    Log    Enter username
    Log    Enter password
    Log    Click on login button
    Log    User is on the home page


Launch Browser
        Log   Launching the browser
Close the Browser
        Log   Closing the browser
Open db
       Log     Open the db
Close db
        Log    Close the db