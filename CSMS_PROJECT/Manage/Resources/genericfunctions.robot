*** Settings ***
Library   Selenium2Library

*** Variables ***
${LOGIN URL}     localhost:3000
${BROWSER}        Chrome
${Address1}      36 Wild Rose Ave.
${Address2}      South Mayflower Drive
${City}          Fishers 
${State}         FL
${Zipcode}        32806


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
  
primary houseaddress
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
    

secondary houseaddress
  
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
    

update form
    
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Page Should Contain    Updating Data
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]    20s
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s


validation error
    
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Page Should Contain    Validation Error
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]    20s
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
   