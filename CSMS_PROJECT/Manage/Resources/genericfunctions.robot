*** Settings ***
Library   Selenium2Library

*** Variables ***
${LOGIN URL}     localhost:3000
${BROWSER}        Chrome


***Keywords***
login
    Open Browser    ${LOGIN URL}    ${BROWSER}
  
    Maximize Browser Window
    Set Browser Implicit Wait    20
  
    Selenium2Library.Input Text  xpath=//input[@id="loginID"]    admin@gmail.com
    Selenium2Library.Input Text  xpath=//input[@id="password"]    test123
    Selenium2Library.Input Text  xpath=//input[@id="companyID"]   116101115116
    
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary" and @id="submit"]
 
   Wait Until Page Does Not Contain Element    xpath=//*[@class="btn btn-primary" and @id="submit"] 
  
logout and close browser
    Selenium2Library.Click Element   xpath=//*[@href="/logout"]  
  Close Browser 
    
   