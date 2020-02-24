***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String 

*** Test Cases ***

    
CustomerAdd
    login
    Go To    localhost:3000/manage
    Selenium2Library.Click Element    xpath=//*[@href="/manage/customer"]   
    Selenium2Library.Click Element   xpath=//*[@href="/manage/customerAdd"]  
    

Customer Add
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer14}
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Updating Data
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s